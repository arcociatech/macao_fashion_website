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
                ->whereNotIn('name',['VESTE', 'GILLET', 'BLAZER','VESTE LONG', 'BLOUSE', 'CHEMISE', 'PULL', 'T-SHIRT','BAS', 'PANTALON', 'DENIM JEANS', 'SHORT', 'TROUSURE', 'COMBIPANTALON', 'COMBISHORT','BAS COLLANT','TOP'])
                ->orderBy('name', 'asc')
                ->get()
                ->toArray();

            $sub_categories = $connection->table('categories')->where('parent_id', '!=', 0)
                ->whereNotIn('name', ['VESTE', 'GILLET', 'BLAZER', 'VESTE LONG', 'BLOUSE', 'CHEMISE', 'PULL', 'T-SHIRT', 'BAS', 'PANTALON', 'DENIM JEANS', 'SHORT', 'TROUSURE', 'COMBIPANTALON', 'COMBISHORT', 'BAS COLLANT','TOP'])
                ->orderBy('name', 'asc')
                ->get()
                ->toArray();

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
                if(!Category::where('name', $all_categories[$i]['name'])->first()) {
                    $cat = Category::create([
                        'name' => $all_categories[$i]['name'],
                        'slug' => strtolower(trim(preg_replace('/[\s-]+/', ' ', preg_replace('/[^A-Za-z0-9-]+/', ' ', preg_replace('/[&]/', 'and', preg_replace('/[\']/', '', iconv('UTF-8', 'ASCII//TRANSLIT', $all_categories[$i]['name']))))), ' ')),
                    ]);
                    $categories++;
                }
                $subcategory = $all_categories[$i]['sub_categories'];
                for ($j = 0; $j < count($subcategory); $j++) {
                    if(!Subcategory::where('name', $subcategory[$j]['name'])->first()) {
                        Subcategory::create([
                            'name' => $subcategory[$j]['name'],
                            'slug' => strtolower(trim(preg_replace('/[\s-]+/', ' ', preg_replace('/[^A-Za-z0-9-]+/', ' ', preg_replace('/[&]/', 'and', preg_replace('/[\']/', '', iconv('UTF-8', 'ASCII//TRANSLIT', $subcategory[$j]['name']))))), ' ')),
                            'category_id' => $cat->id,
                        ]);
                        $sub_categories++;
                    }
                    $sub_categories++;
                }
            }
            // Creating Custom categories
            $this->custom_categories();
            DB::commit();
            //--- Redirect Section
            Session::flash('success', '"Categories: "'.$categories.'", Sub Categories: "'.$sub_categories.'". Imported Successfully!"');
            return redirect()->back();
      //--- Redirect Section Ends
        } catch (\Exception $ex) {
            DB::rollback();
            dd($ex->getMessage().' on line: '.$ex->getLine());
            Session::flash('error', 'Error Occured. '. $ex->getMessage());
            return redirect()->back();
        }
    }
    /**
     * CUSTOM CATEGORIES
     *
     **/
    public function custom_categories()
    {
        $women = Category::where('slug', 'women')->first()->id;
        if (!Subcategory::where('name', 'VESTE')->first()) {
            $veste = Subcategory::create([
                'name' => 'VESTE',
                'slug' => 'veste',
                'category_id' => $women
            ]);
            Childcategory::create([
                'name' => 'GILLET',
                'slug' => 'gillet',
                'subcategory_id' => $veste->id
            ]);
            Childcategory::create([
                'name' => 'BLAZER',
                'slug' => 'blazer',
                'subcategory_id' => $veste->id
            ]);
            Childcategory::create([
                'name' => 'VESTE LONG',
                'slug' => 'veste-long',
                'subcategory_id' => $veste->id
            ]);
        }
        if (!Subcategory::where('name', 'TOP')->first()) {
            $top = Subcategory::create([
                'name' => 'TOP',
                'slug' => 'top',
                'category_id' => $women
            ]);

            Childcategory::create([
                'name' => 'BLOUSE',
                'slug' => 'blouse',
                'subcategory_id' => $top->id
            ]);
            Childcategory::create([
                'name' => 'CHEMISE',
                'slug' => 'chemise',
                'subcategory_id' => $top->id
            ]);
            Childcategory::create([
                'name' => 'PULL',
                'slug' => 'pull',
                'subcategory_id' => $top->id
            ]);
            Childcategory::create([
                'name' => 'T-SHIRT',
                'slug' => 't-shirt',
                'subcategory_id' => $top->id
            ]);
        }
        if (!Category::where('name', 'BAS')->first()) {
            $bas = Subcategory::create([
                'name' => 'BAS',
                'slug' => 'bas',
                'category_id' => $women
            ]);
            Childcategory::create([
                'name' => 'PANTALON',
                'slug' => 'pantalon',
                'subcategory_id' => $bas->id
            ]);
            Childcategory::create([
                'name' => 'DENIM JEANS',
                'slug' => 'denim-jeans',
                'subcategory_id' => $bas->id
            ]);
            Childcategory::create([
                'name' => 'SHORT',
                'slug' => 'short',
                'subcategory_id' => $bas->id
            ]);
            Childcategory::create([
                'name' => 'TROUSURE',
                'slug' => 'trouser',
                'subcategory_id' => $bas->id
            ]);
            Childcategory::create([
                'name' =>'COMBIPANTALON',
                'slug' => 'combipantalon',
                'subcategory_id' => $bas->id
            ]);
            Childcategory::create([
                'name' => 'COMBISHORT',
                'slug' => 'combishort',
                'subcategory_id' => $bas->id
            ]);
            Childcategory::create([
                'name' => 'BAS COLLANT',
                'slug' => 'bas-collant',
                'subcategory_id' => $bas->id
            ]);
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
                        ->join('variation_location_details as vld', 'vld.product_id', '=', 'p.id')
                        ->join('variations as v', 'p.id', '=', 'v.product_id')
                        ->join('sizes as s', 'p.sub_size_id', '=', 's.id')
                        ->join('colors as c', 'c.id', '=', 'p.color_id')
                        ->join('categories as cat', 'cat.id', '=', 'p.category_id')
                        ->join('categories as sub_cat', 'sub_cat.id', '=', 'p.sub_category_id')
                        ->groupBy('id')
                        ->get([
                            'p.id',
                            'p.name as name',
                            'p.sku as sku',
                            'cat.name as category_name',
                            'sub_cat.name as sub_category_name',
                            'c.name as color',
                            'c.color_code as color_code',
                            's.name as size',
                            'website_products.quantity as quantity',
                            'v.sell_price_inc_tax as price',
                            'p.image',
                            // DB::raw('(SELECT qty_available from variation_location_details) as qty'),
                            DB::raw('SUM(vld.qty_available) as qty'),
                            // 'vld.qty_available',
                        ])
                        ->groupBy('name')
                        ->toArray();
            // $total = $connection->table('website_products')->count('id');
            // dd($products);
            DB::beginTransaction();
            $qurrey_count = 0;
            $all_product = 0;
            $product = 0;
            // dd($products);
            foreach ($products as $key => $value) {
                // for ($i=0; $i < count($products); $i++) {
                $qurrey_count++;
                $current_product = $value;
                $cat_id = NULL;
                $subcat_id = NULL;
                $child_id = NULL;
                if (Category::where('name', $current_product[0]->category_name)->first()) {
                    $cat_id = Category::where('name', $current_product[0]->category_name)->first()->id;
                }
                if (Subcategory::where('name', $current_product[0]->sub_category_name)->first()) {
                    $sub_category = Subcategory::where('name', $current_product[0]->sub_category_name)->first();
                    $subcat_id = $sub_category->id;
                    $cat_id = $sub_category->category_id;
                    ;
                }
                if (Childcategory::where('name', $current_product[0]->sub_category_name)->first()) {
                    $child = Childcategory::where('name', $current_product[0]->sub_category_name)->first();
                    $child_id = $child->id;
                    $subcat_id = $child->subcategory_id;
                    $cat_id = Subcategory::find($subcat_id)->category_id;
                }
                $size = [];
                $color = [];
                $color_image = [];
                $quantity =[];
                $price = [];
                for ($j=0; $j < count($current_product); $j++) {
                    $size[$j] =  $current_product[$j]->size;
                    if(($j > 0 ) && (isset($color[($j - 1)]) && ($color[($j-1)] != $current_product[$j]->color))) {
                        $color[$j] = $current_product[$j]->color;
                    }elseif($j == 0){
                        $color[0] = $current_product[$j]->color;
                    }
                    // $quantity[$j] = $current_product[$j]->quantity;
                    if ($current_product[$j]->qty) {
                        $quantity[$j] = (int) $current_product[$j]->qty;
                    }else{
                        $quantity[$j] = 0;
                    }
                    $price[$j] = (float)$current_product[0]->price;
                    $color_image[$j] = 'assets/images/products/'.$current_product[$j]->image;
                    $all_product++;
                }
                // Create Product here
                if (!Product::where('name', $current_product[0]->name)->first()) {

                    $data = new Product;
                    $input = [];
                    $input['name'] = $current_product[0]->name;
                    $input['slug'] = strtolower($current_product[0]->name);
                    $input['sku'] = $current_product[0]->sku;
                    $input['photo'] = $current_product[0]->image;
                    $input['thumbnail'] = $current_product[0]->image;
                    $input['size'] = implode(",", $size);
                    $input['size_price'] = implode(",", $price);
                    $input['size_qty'] = implode(",", $quantity);
                    $input['stock'] = $current_product[0]->quantity;
                    $input['quantity'] = $current_product[0]->quantity;
                    $input['color'] = implode(",", $color);
                    $input['color_image'] = implode(",", $color_image);
                    $input['price'] = (float)$current_product[0]->price;
                    $input['category_id'] = $cat_id;
                    $input['subcategory_id'] = $subcat_id;
                    $input['childcategory_id'] = $child_id;
                    $data->fill($input)->save(); //save product
                    $product++;
                }
                // dd("Hello");
            }
            DB::commit();
            Session::flash('success', $all_product.' of '.$qurrey_count.' products are merged into '.$product.' successfully');
            return redirect()->back();
        } catch (\Exception $ex) {
            DB::rollback();
            // dd($current_product);
            dd($ex->getMessage().' on Line: '.$ex->getLine().' in file: '.$ex->getFile());
            Session::flash('error', 'Error Occured. ' . $ex->getMessage());
            return redirect()->back();
        }
    }
}
