<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
<<<<<<< HEAD
    public function __construct()
    {
        $this->middleware('auth');
=======
    /**
    * Create a new controller instance.
    *
    * @return void
    */
    public function __construct()
    {
        $this->middleware('auth:api');
>>>>>>> 05aece33c75946d182d523d00f45aeea44c8388f
    }
    /**
     * Logout
     *
     * @param \Illuminate\Http\Request $request
     * @return JsonResponse
     */
<<<<<<< HEAD

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
=======
    public function logout(Request $request)
    {
        // $user = Auth::user();
        // dd($user);
        try{
            DB::beginTransaction();
            $user = DB::table('oauth_access_tokens')
            ->where('user_id', Auth::user()->id)
            ->update([
                'revoked' => true,
            ]);
            // $user = Auth::user()->token();
            // $user->revoke();
            // $data['message'] = 'Registered Successfully';
            DB::commit();
            return $this->apiResponse(200, 'message', 'User Logout Successfully');
        }catch (\Exception $ex) {
            DB::rollback();
            return $this->apiResponse(422, 'message', $ex->getMessage());
>>>>>>> 05aece33c75946d182d523d00f45aeea44c8388f
        }
    }
}
