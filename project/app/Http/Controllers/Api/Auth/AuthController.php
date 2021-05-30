<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    /**
    * Create a new controller instance.
    *
    * @return void
    */
    public function __construct()
    {
        $this->middleware('auth:api');
    }
    /**
     * Logout
     *
     * @param \Illuminate\Http\Request $request
     * @return JsonResponse
     */
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
        }
    }
}
