<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Gallery;
use App\Models\Product;
use Image;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class MainImageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function show()
    {
        $data[0] = 0;
        $id = $_GET['id'];
        $prod = Product::findOrFail($id);
        if (count($prod->galleries)) {
            $data[0] = 1;
            $data[1] = $prod->galleries;
        }
        return response()->json($data);
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $data = null;
        $lastid = $request->product_id;
        if ($file = $request->file('setMainImage')) {
            // foreach ($files as  $key => $file) {
                $val = $file->getClientOriginalExtension();
                // dd($file);
                // if($val == 'jpeg'|| $val == 'jpg'|| $val == 'png'|| $val == 'svg')
                //   {
                    // $gallery = new Gallery();
                    $product = Product::find($lastid);
                    // dd($product);

                    $img = Image::make($file->getRealPath())->resize(800, 800);
                    $thumbnail = Str::random(10) . '.jpg';
                    // dd($img->save(public_path() . '/assets/images/products/' . $thumbnail),$file->getRealPath(),$img, $thumbnail);
                    $img->save(public_path() . '/assets/images/products/' . $thumbnail);
                    $img->save(public_path() . '/assets/images/thumbnails/' . $thumbnail);

                    $product->photo = $thumbnail;
                    $product->thumbnail = $thumbnail;

                    $gallery['photo'] = $thumbnail;
                    $gallery['product_id'] = $lastid;
                    $product->save();
                    $data[] = $gallery;
                    // dd($gallery);
                //   }
            // }
        }
        // dd($data);
        return response()->json($data);
    }

    public function destroy()
    {

        $id = $_GET['id'];
        $gal = Gallery::findOrFail($id);
        if (file_exists(public_path() . '/assets/images/galleries/' . $gal->photo)) {
            unlink(public_path() . '/assets/images/galleries/' . $gal->photo);
        }
        $gal->delete();
    }
}
