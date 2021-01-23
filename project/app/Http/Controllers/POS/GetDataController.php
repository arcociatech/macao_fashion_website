<?php

namespace App\Http\Controllers\POS;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Childcategory;
use App\Models\Product;
use App\Models\SendData;
use App\Models\Subcategory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class GetDataController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Get Categories
     *
     *
     **/
    public function getCategories()
    {
        try {
            $all_categories = [];
            $connection = DB::connection('pos_macaofashion');

            $categories = $connection->table('categories')->where('parent_id', 0)
                ->orderBy('name', 'asc')
                ->get()->toArray();

            $sub_categories = $connection->table('categories')->where('parent_id', '!=', 0)
                ->orderBy('name', 'asc')
                ->get()->toArray();

            $sub_cat_by_parent = [];

            if (!empty($sub_categories)) {
                foreach ($sub_categories as $sub_category) {
                    if (empty($sub_cat_by_parent[$sub_category->parent_id])) {
                        $sub_cat_by_parent[$sub_category->parent_id] = [];
                    }

                    $sub_cat_by_parent[$sub_category->parent_id][] = (array)$sub_category;
                }
            }
            $i=0;
            foreach ($categories as $key => $value) {
                if (!empty($sub_cat_by_parent[$value->id])) {
                    $all_categories[$i] = (array)$value;
                    $all_categories[$i]['sub_categories'] = $sub_cat_by_parent[$value->id];
                    $i++;
                }
            }
            DB::beginTransaction();
            $categories = 0;
            $sub_categories = 0;
                for ($i = 0; $i < count($all_categories); $i++) {
                    if(!Subcategory::where('name', $all_categories[$i]['name'])->first()) {
                        $subcat = Subcategory::create([
                            'name' => $all_categories[$i]['name'],
                            'slug' => strtolower(trim(preg_replace('/[\s-]+/', ' ', preg_replace('/[^A-Za-z0-9-]+/', ' ', preg_replace('/[&]/', 'and', preg_replace('/[\']/', '', iconv('UTF-8', 'ASCII//TRANSLIT', $all_categories[$i]['name']))))), ' ')),
                            'category_id' => 5,
                        ]);
                        $categories++;
                    }
                    $subcategory = $all_categories[$i]['sub_categories'];
                    for ($j = 0; $j < count($subcategory); $j++) {
                        if(!Childcategory::where('name', $subcategory[$j]['name'])->first()) {
                            Childcategory::create([
                                'name' => $subcategory[$j]['name'],
                                'slug' => strtolower(trim(preg_replace('/[\s-]+/', ' ', preg_replace('/[^A-Za-z0-9-]+/', ' ', preg_replace('/[&]/', 'and', preg_replace('/[\']/', '', iconv('UTF-8', 'ASCII//TRANSLIT', $subcategory[$j]['name']))))), ' ')),
                                'subcategory_id' => $subcat->id,
                            ]);
                            $sub_categories++;
                        }
                    }
                }
            DB::commit();
            //--- Redirect Section
            Session::flash('success', '"Categories: "'.$categories.'", Sub Categories: "'.$sub_categories.'". Imported Successfully!"');
            return redirect()->back();
      //--- Redirect Section Ends
        } catch (\Exception $ex) {
            DB::rollback();
            // dd($ex->getMessage());
            Session::flash('error', 'Error Occured. '. $ex->getMessage());
            return redirect()->back();
        }
    }
    /**
     * Get Products
     *
     **/
    public function getProducts()
    {
        try {
            $connection = DB::connection('pos_macaofashion');
            $products = $connection->table('website_products')
                        ->join('products as p', 'p.refference', '=', 'website_products.refference')
                        ->join('variations as v', 'p.id', '=', 'v.product_id')
                        ->join('sizes as s', 'p.sub_size_id', '=', 's.id')
                        ->join('colors as c', 'c.id', '=', 'p.color_id')
                        ->join('categories as cat', 'cat.id', '=', 'p.category_id')
                        ->join('categories as sub_cat', 'sub_cat.id', '=', 'p.sub_category_id')
                        ->get([
                            'p.name as name',
                            'p.sku as sku',
                            'cat.name as category_name',
                            'sub_cat.name as sub_category_name',
                            'c.name as color',
                            's.name as size',
                            'website_products.quantity as quantity',
                            'v.sell_price_inc_tax as price'
                        ])
                        ->groupBy('name')
                        ->toArray();
            // $total = $connection->table('website_products')->count('id');
            // dd($products);
            DB::beginTransaction();
            $qurrey_count = 0;
            $all_product = 0;
            $product = 0;
            foreach ($products as $key => $value) {
                // for ($i=0; $i < count($products); $i++) {
                $qurrey_count++;
                $current_product = $value;
                $sub_category = Subcategory::where('name', $current_product[0]->category_name)->first();
                $subcat_id = $sub_category->id;
                $cat_id = $sub_category->category_id;
                $child_id = Childcategory::where('name', $current_product[0]->sub_category_name)->first()->id;
                $size = [];
                $color = [];
                $quantity =[];
                $price = [];
                for ($j=0; $j < count($current_product); $j++) {
                    $size[$j] =  $current_product[$j]->size;
                    $color[$j] = $current_product[$j]->color;
                    $quantity[$j] = $current_product[$j]->quantity;
                    $price[$j] = (float)$current_product[0]->price;
                    $all_product++;
                }
                // Create Product here
                if (!Product::where('name', $current_product[0]->name)->first()) {
                    $data = new Product;
                    $input = [];
                    $input['name'] = $current_product[0]->name;
                    $input['slug'] = strtolower($current_product[0]->name);
                    $input['sku'] = $current_product[0]->sku;
                    $input['size'] = implode(",", $size);
                    $input['size_price'] = implode(",", $price);
                    $input['size_qty'] = implode(",", $quantity);
                    $input['color'] = implode(",", $color);
                    $input['price'] = (float)$current_product[0]->price;
                    $input['category_id'] = $cat_id;
                    $input['subcategory_id'] = $subcat_id;
                    $input['childcategory_id'] = $child_id;
                    $input['photo'] = 'images/noimage.png';
                    $input['thumbnail'] = 'images/noimage.png';
                    $data->fill($input)->save(); //save product
                    // $products = Product::create([
                    //     'name' => $current_product[0]->name,
                    //     'slug' => strtolower($current_product[0]->name),
                    //     'sku' => $current_product[0]->sku,
                    //     'price' => implode(",", $price),
                    //     //Euro to dollor
                    //     // 'price' => $current_product[0]->price*1.21,
                    //     'quantity' => implode(",", $quantity),
                    //     'color' => implode(",", $color),
                    //     'size' => implode(",", $size),
                    //     'category_id' => $cat_id,
                    //     'subcategory_id' => $subcat_id,
                    //     'childcategory_id' => $child_id,
                    //     'photo'=> 'images/noimage.png',
                    //     'thumbnail'=> 'images/noimage.png'
                    // ]);
                    // dd($products);
                    $product++;
                }
                // dd("Hello");
            }
            DB::commit();
            Session::flash('success', $all_product.' of '.$qurrey_count.' products are merged into '.$product.' successfully');
            return redirect()->back();
        } catch (\Exception $ex) {
            DB::rollback();
            dd($ex->getMessage());
            Session::flash('error', 'Error Occured. ' . $ex->getMessage());
            return redirect()->back();
        }
    }
}
