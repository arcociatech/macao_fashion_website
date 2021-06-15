<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Classes\GeniusMailer;
use App\Models\Conversation;
use App\Models\Message;
use App\Models\Generalsetting;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Validator;
class MessageController extends Controller
{
    public function usercontact(Request $request)
    {
        $rules = [
            'email'=>'required',
            'subject'=>'required|min:6',
            'message'=>'required|min:10',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        $user=Auth::user();
        $reciever=User::where('email',$request->email)
                    ->first();
        if(!$reciever)
        {
            return $this->apiResponse(404,'message','Email Not Found');
        }
        $reciever_id=$reciever->id;
       /**
        * Send Email
        **/
       $to = $request->email;
        $subject = $request->subject;
        $from = $request->email;
        $msg = "\nEmail: ".$from."\nMessage: ".$request->message;
        $gs = Generalsetting::findOrfail(1);
        if($gs->is_smtp == 1)
        {
        $dataa = [
            'to' => $request->email,
            'subject' => $request->subject,
            'body' => $msg,
        ];

        $mailer = new GeniusMailer();
        $mailer->sendCustomMail($dataa);
        }
        else
        {
        $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
        mail($to,$subject,$msg,$headers);
        }
        /**
         * Check If Conversation_id Already exit or not
         **/
        $conv = Conversation::where('sent_user','=',$user->id)
                            ->where('subject','=',$subject)
                            ->first();
        /**
         * If Conversation_id Already then user can start conversation
         **/
        if(isset($conv)){
            $msg = new Message();
            $msg->conversation_id = $conv->id;
            $msg->message = $request->message;
            $msg->sent_user = $user->id;
            $msg->save();
            $msg="Successfully Added";
            return $this->apiResponse(200,'message',$msg);
        }
        /**
         * If Conversation_id Not exit
         **/
        else{
            $message = new Conversation();
            $message->subject = $subject;
            $message->sent_user= $user->id;
            $message->recieved_user = $reciever_id;
            $message->message = $request->message;
            $message->save();

            $msg = new Message();
            $msg->conversation_id = $message->id;
            $msg->message = $request->message;
            $msg->sent_user = $user->id;;
            $msg->save();
            $msg="Successfully Added";
            return $this->apiResponse(200,'message','Successfully Send a Message');
        }
    }
    /**
     * Post Message
     **/
    public function postmessage(Request $request)
    {
        $rules = [
            'con_id'=>'required',
        ];
        $user=Auth::user();
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        $find=Message::where('conversation_id',$request->con_id)
                    ->first();
        if($find)
        {
            $msg=Message::where('conversation_id',$request->con_id)
                        ->where('sent_user',$user->id)
                        ->get([
                            'message'
                        ]);
            return $this->apiResponse(200,'message',$msg);
        }
        else{
            return $this->apiResponse(404,'message','Not Found');
        }
    }
    /**
     * Send Message
     **/
    public function sendMessage(Request $request)
    {
        $rules = [
            'con_id'=>'required',
        ];
        $user=Auth::user();
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        $msg = new Message();
        $msg->sent_user=$user->id;
        $msg->conversation_id=$request->con_id;
        $msg->message=$request->message;
        $msg->save();
        return $this->apiResponse(200,'message','Successfuly Send Message');
    }
    /**
     * Show Conversation
     **/
    public function index(Request $request)
    {
        $user=Auth::user();
        $find=Conversation::where('sent_user',$user->id)
                            ->first();
        if($find==null)
        {
            return $this->apiResponse(404,'message','Conversation is Not Found');
        }
        else{
            $con=Conversation::where('sent_user',$user->id)
                            ->get([
                                'message',
                                'created_at'
                            ]);
        return $this->apiResponse(200,'data',$con);
        }
    }
    /**
     * Delete Conversation
     **/
    public function delete_conversation(Request $request)
    {
        $rules = [
           'conversation_id' => 'required'
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $this->apiResponse(422, 'message', $validator->errors());
        }
        $con_id=$request->conversation_id;
        $msg=Message::where('conversation_id',$con_id)
                    ->delete();
        $con=Conversation::where('id',$con_id)
                        ->delete();
        if($msg ||$con)
        {
            $message="Delete Successfully";
            return $this->apiResponse(200,'message',$message);
        }
        else{
            $message="Not Found";
             return $this->apiResponse(200,'message',$message);
        }
    }
}
