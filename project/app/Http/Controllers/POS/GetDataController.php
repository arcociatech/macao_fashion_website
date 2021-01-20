<?php

namespace App\Http\Controllers\POS;

use App\Http\Controllers\Controller;
use App\Models\Childcategory;
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
        try {
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

    }
}
