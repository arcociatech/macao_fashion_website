<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Logout
     *
     * @param \Illuminate\Http\Request $request
     * @return JsonResponse
     */

    // public function logout(Request $request)
    // {
    //     // $user = Auth::user();
    //     dd(1);
    //     try {
    //         DB::beginTransaction();
    //         $user = DB::table('oauth_access_tokens')
    //             ->where('user_id', Auth::user()->id)
    //             ->update([
    //                 'revoked' => 1,
    //             ]);
    //         // Auth::logout();
    //         // $user = Auth::user()->token();
    //         // $user->revoke();
    //         // $data['message'] = 'Registered Successfully';
    //         // DB::commit();
    //         return $this->apiResponse(200, 'message', 'User Logout Successfully');
    //     } catch (\Exception $ex) {
    //         DB::rollback();
    //         return $this->apiResponse(422, 'message', $ex->getMessage());
    //     }
    // }
    public function logout(Request $request)
    {
        dd(Auth::user());
        if (Auth::check()) {
            Auth::logout();
            return $this->apiResponse(200, 'message', 'User Logged Out Successfully');
        } else {
            return $this->apiResponse(401, 'message', 'Please Login Before Performing This Action');
        }
    }
}
