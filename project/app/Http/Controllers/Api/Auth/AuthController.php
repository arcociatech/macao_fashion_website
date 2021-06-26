<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

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
    // public function logout(Request $request)
    // {
    //     dd(Auth::user());
    //     if (Auth::check()) {
    //         Auth::logout();
    //         return $this->apiResponse(200, 'message', 'User Logged Out Successfully');
    //     } else {
    //         return $this->apiResponse(401, 'message', 'Please Login Before Performing This Action');
    //     }
    // }
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
     /**
     * Reset Password
     **/
    public function reset(Request $request)
    {
        $user=Auth::user();
        $rules = [
            'cpass'=>'required',
            'newpass'=>'required|min:5',
            'renewpass' => 'required',
        ];
        // check validation
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        if($request->cpass)
        {
            if (Hash::check($request->cpass, $user->password)){
                if ($request->newpass == $request->renewpass){
                    $input['password'] = Hash::make($request->newpass);
                }else{
                    $msg = 'Confirm password does not match';
                    return $this->apiResponse(422,'error',$msg);
                }
            }else{
                $msg = 'Current password Does not match.';
                return $this->apiResponse(422,'error',$msg);
            }
        }
        $user->update($input);
        $msg = 'Password Reset Successfully';
        return $this->apiResponse(200,'message',$msg);
    }
     /**
     * EDit Profile
     **/
    public function edit(Request $request)
    {
        // $rules = [
        //     'phone' => 'mimes:jpeg,jpg,png,svg'
        // ];
        // // check validation
        // $validator = Validator::make($request->all(), $rules);
        // if ($validator->fails()) {
        //     return $this->apiResponse(422, 'message', $validator->errors());
        // }
        $user=Auth::user();
        $input = $request->all();
        if ($file = $request->file('photo'))
        {
            $name = time().str_replace(' ', '', $file->getClientOriginalName());
            $file->move('assets/images/users/',$name);
            if($user->photo != null)
            {
                if (file_exists(public_path().'/assets/images/users/'.$user->photo)) {
                    unlink(public_path().'/assets/images/users/'.$user->photo);
                }
            }
        $user['photo'] = $name;
        }
        $user->update($input);
        $msg = 'Successfully updated your profile';
        return $this->apiResponse(200,'msg',$msg);
    }
}
