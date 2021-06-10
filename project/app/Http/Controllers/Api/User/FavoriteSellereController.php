<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\FavoriteSeller;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
class FavoriteSellereController extends Controller
{
    /**
     *Favourite Seller Api
     **/
    public function favorites(Request $request)
    {
        $user=Auth::user();
        $fav = FavoriteSeller::where('user_id',$user->id)
                            ->first();
        if($fav!=null)
        {
         $user2=User::where('id',$fav->user_id)
                            ->get([
                                'shop_name',
                                'owner_name',
                                'shop_address'
                            ]);
        return $this->apiResponse(200,'data',$user2);

        }
        else{

            return $this->apiResponse(404,'message','Not Found');
        }
    }
    /**
     * Favorite Seller delete Api
     **/
    public function delete(Request $request)
    {
        $user=Auth::user();
        $fav = DB::table('favorite_sellers')
                ->where('user_id','=',$user->id)
                ->delete();
        if($fav)
        {
            $message="Successfully Delete";
            return $this->apiResponse(200,'message',$message);
        }
        else
        {
            $message="Already Delete";
            return $this->apiResponse(200,'message',$message);
        }
    }
}
