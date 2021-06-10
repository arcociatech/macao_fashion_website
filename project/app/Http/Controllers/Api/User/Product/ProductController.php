<?php

namespace App\Http\Controllers\Api\User\Product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Subcategory;
use App\Models\Category;
use App\Models\Childcategory;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;
class ProductController extends Controller
{
    /**
     * Show Category Products With Sub_categories
     */
    public function Category_products(Request $request)
    {
        $rules=[
            'category'=>'required'
        ];
        $validator=Validator::make($request->all(),$rules);
        if($validator->fails())
        {
            return $this->apiResponse(422,'message',$validator->errors());
        }
        $category = $request->category;
        $selectable = ['name','category_id','slug','features','colors','thumbnail','price',  'previous_price','attributes','size','size_price','discount_date'];
        if($category=='women')
        {
            $women_category_id = Category::where('slug','women')->first()->id;
            $women_sub_category_id = Subcategory::where('category_id',$women_category_id)
                                                ->pluck('id')
                                                ->toArray();
            $women =  Product::where('category_id',$women_category_id)
                            ->whereIn('subcategory_id',$women_sub_category_id)
                            ->where('status','=',1)->select($selectable)
                            ->orderBy('id','desc')
                            ->get();
            return $this->apiResponse(200,'data',$women);
        }
        elseif($category=='chaussure')
        {
            $chaussure_category_id = Category::where('slug', 'chaussure')->first()->id;
            $chaussure =  Product::with('user')->where('category_id', $chaussure_category_id)
                                                ->where('status','=',1)->select($selectable)
                                                ->orderBy('id','desc')
                                                ->get();
            return $this->apiResponse(200,'data',$chaussure);
        }
        elseif($category=='accessoire'){
            $accessories_category_id = Category::where('slug', 'accessoire')->first()->id;
            $accessories_child_category_id = Subcategory::where('category_id', $accessories_category_id)
                                                        ->pluck('id')
                                                        ->toArray();
            $accessories =  Product::with('user')->where('category_id', $accessories_category_id)
                                                ->where('status','=',1)
                                                ->select($selectable)
                                                ->orderBy('id','desc')
                                                ->take(9)
                                                ->get();
            return $this->apiResponse(200,'data',$accessories);
        }
        else{
            return $this->apiResponse(404,'message','Not Found');
        }
    }
    /**
     * Show Best,Hot,Latest,Big,Top,Trending Products
     **/
    public function show_products(Request $request)
    {
        $rules=[
            'product_type'=>'required'
        ];
        $validator=Validator::make($request->all(),$rules);
        if($validator->fails())
        {
            return $this->apiResponse(422,'message',$validator->errors());
        }
        $product_type=Str::lower($request->product_type);
        $selectable = ['id','user_id','name','slug','features','colors','thumbnail','price','previous_price','attributes','size','size_price','discount_date'];
        if($product_type=='best')
        {
            $best_products=Product::with('user')->where('best','=',1)
                                    ->where('status','=',1)
                                    ->select($selectable)
                                    ->orderBy('id','desc')
                                    ->get();
            if(!$best_products->first())
            {
                return $this->apiResponse(404,'message','Not Found');
            }
            return $this->apiResponse(200,'data',$best_products);
        }
        elseif($product_type=='top'){
            $top_products = Product::with('user')
                                    ->where('top','=',1)
                                    ->where('status','=',1)
                                    ->select($selectable)
                                    ->orderBy('id','desc')
                                    ->get();
             if(!$top_products->first())
            {
                return $this->apiResponse(404,'message','Not Found');
            }
                return $this->apiResponse(200,'data',$top_products);
        }
        elseif($product_type=='big'){
            $big_products = Product::with('user')->where('big','=',1)
                                                ->where('status','=',1)
                                                ->select($selectable)
                                                ->orderBy('id','desc')
                                                ->get();
            if(!$big_products->first())
            {
                return $this->apiResponse(404,'message','Not Found');
            }
                return $this->apiResponse(200,'data',$big_products);
        }
        elseif($product_type=='hot'){
            $hot_products =  Product::with('user')->where('hot','=',1)
                                                ->where('status','=',1)
                                                ->select($selectable)
                                                ->orderBy('id','desc')
                                                ->get();
            if(!$hot_products->first())
            {
                return $this->apiResponse(404,'message','Not Found');
            }
                return $this->apiResponse(200,'data',$hot_products);
        }
        elseif($product_type=='latest'){
            $latest_products =  Product::with('user')->where('latest','=',1)
                                                    ->where('status','=',1)
                                                    ->select($selectable)
                                                    ->orderBy('id','desc')
                                                    ->get();
            if(!$latest_products->first())
            {
                return $this->apiResponse(404,'message','Not Found');
            }
                return $this->apiResponse(200,'data',$latest_products);
        }
        elseif($product_type=='trending'){
            $trending_products =  Product::with('user')->where('trending','=',1)
                                                        ->where('status','=',1)
                                                        ->select($selectable)
                                                        ->orderBy('id','desc')
                                                        ->get();
            if(!$trending_products->first())
            {
                return $this->apiResponse(404,'message','Not Found');
            }
                return $this->apiResponse(200,'data',$trending_products);
        }
        elseif($product_type=='sale'){
            $sale_products =  Product::with('user')->where('sale','=',1)
                                                    ->where('status','=',1)
                                                    ->select($selectable)
                                                    ->orderBy('id','desc')
                                                    ->get();
            if(!$sale_products->first())
            {
                return $this->apiResponse(404,'message','Not Found');
            }
                return $this->apiResponse(200,'data',$sale_products);
        }
        else{
            return $this->apiResponse(404,'message','Invalid Type');
        }
    }
    /**
     * Show Products By thier Sub Categories
     **/
    public function SubCategoryProducts(Request $request)
    {
        $rules=[
            'sub_category'=>'required'
        ];
        $validator=Validator::make($request->all(),$rules);
        if($validator->fails())
        {
            return $this->apiResponse(422,'message',$validator->errors());
        }
        $sub_category=Str::lower($request->sub_category);
        /**
         * Check The  $sub_category  in Subcategory Table
         **/
        $sub_category_id=Subcategory::where('slug',$sub_category)->first();
        /**
         * If $sub_category Exist in Subdcategory table ,then check into
         * product table ,if $child_category is not exist then show error messsage
         **/
        if(!$sub_category_id)
        {
            return $this->apiResponse(404,'message','Invalid Sub_Category');
        }
        $chk= Product::where('subcategory_id',$sub_category_id->id)->count();
        $products=Category::join('products as p','p.category_id','categories.id')
                            ->join('subcategories as s','s.id','p.subcategory_id')
                            ->join('childcategories as c','c.id','p.childcategory_id')
                            ->where('s.slug',$sub_category)
                            ->get([
                                'categories.name as category_name',
                                'p.sku',
                                's.name as subcategory_name',
                                'c.name as childcategory_name',
                                'p.product_type',
                                'p.name',
                                'p.slug',
                                'p.photo',
                                'p.file',
                                'p.size',
                                'p.size_qty',
                                'p.size_price',
                                'p.color',
                                'p.color_image',
                                'p.price',
                                'p.previous_price',
                                'p.details',
                                'p.stock',
                                'p.policy',
                                'p.status',
                                'p.views',
                                'p.tags',
                                'p.features',
                                'p.product_condition',
                                'p.ship',
                                'p.is_meta',
                                'p.meta_tag',
                                'p.meta_description',
                                'p.youtube',
                                'p.type',
                                'p.license',
                                'p.license_qty',
                                'p.link',
                                'p.platform',
                                'p.region',
                                'p.licence_type',
                                'p.measure',
                                'p.featured',
                                'p.best',
                                'p.top',
                                'p.latest',
                                'p.sale',
                                'p.hot',
                                'p.big',
                                'p.trending',
                                'p.is_discount',
                            ]);
        if($chk<=0)
        {
            return $this->apiResponse(404,'message','Not Found');
        }
        else{
            return $this->apiResponse(200,'data',$products);
        }
    }
    /**
     * Show Products By Thier Child Categories
     **/
    public function ChildCategoryProducts(Request $request)
    {
        $rules=[
            'child_category'=>'required'
        ];
        $validator=Validator::make($request->all(),$rules);
        if($validator->fails())
        {
            return $this->apiResponse(422,'message',$validator->errors());
        }
        $child_category=Str::lower($request->child_category);
        /**
         * Check The  $child_category  in Childcategory Table
         **/
        $child_cat_id=Childcategory::where('slug',$child_category)->first();
        /**
         * If $child_category Exist in Childcategory table ,then check into
         * product table ,if $child_category is not exist then show error messsage
         **/
        if(!$child_cat_id)
        {
            return $this->apiResponse(404,'message','Not Found');
        }
        $chk=Product::where('childcategory_id',$child_cat_id->id)->count();
        $products=Category::join('products as p','p.category_id','categories.id')
                            ->join('subcategories as s','s.id','p.subcategory_id')
                            ->join('childcategories as c','c.id','p.childcategory_id')
                            ->where('c.slug',$child_category)
                            ->get([
                                'categories.name as category_name',
                                'p.sku',
                                's.name as subcategory_name',
                                'c.name as childcategory_name',
                                'p.product_type',
                                'p.name',
                                'p.slug',
                                'p.photo',
                                'p.file',
                                'p.size',
                                'p.size_qty',
                                'p.size_price',
                                'p.color',
                                'p.color_image',
                                'p.price',
                                'p.previous_price',
                                'p.details',
                                'p.stock',
                                'p.policy',
                                'p.status',
                                'p.views',
                                'p.tags',
                                'p.features',
                                'p.product_condition',
                                'p.ship',
                                'p.is_meta',
                                'p.meta_tag',
                                'p.meta_description',
                                'p.youtube',
                                'p.type',
                                'p.license',
                                'p.license_qty',
                                'p.link',
                                'p.platform',
                                'p.region',
                                'p.licence_type',
                                'p.measure',
                                'p.featured',
                                'p.best',
                                'p.top',
                                'p.latest',
                                'p.sale',
                                'p.hot',
                                'p.big',
                                'p.trending',
                                'p.is_discount',
                            ]);
        if($chk<=0)
        {
            return $this->apiResponse(404,'message','Not Found');
        }
        else{
            return $this->apiResponse(200,'data',$products);
        }
    }
}
