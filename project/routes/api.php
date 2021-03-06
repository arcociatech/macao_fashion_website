<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/**  user Authentication Routes  */

Route::prefix('auth')->group(function () {
    Route::post('login', 'Api\Auth\LoginSignupController@login');
    Route::post('register', 'Api\Auth\LoginSignupController@register');
    // Route::post('user-logout', 'Api\Auth\AuthController@logout');
});
  /** User Routes  */

Route::prefix('user')->group(function () {
    /**
     * User Dashboard Api
     **/
Route::get('account_info','Api\User\UserController@account_info')->middleware('auth:api');
Route::get('balance','Api\User\UserController@balance')->middleware('auth:api');
Route::get('total_orders','Api\User\UserController@total_orders')->middleware('auth:api');
Route::get('pending_orders','Api\User\UserController@pending_orders')->middleware('auth:api');
Route::get('recent_orders','Api\User\UserController@recent_orders')->middleware('auth:api');
/**
 * View Order Api
 */
Route::get('view_order','Api\User\ViewOrderController@view_order')->middleware('auth:api');
/**
 * Favourites Seller Api
 **/
Route::post('add/favourite','Api\User\FavoriteSellereController@favorite')->middleware('auth:api');
Route::get('favourite_seller','Api\User\FavoriteSellereController@favorites')->middleware('auth:api');
Route::get('favourite_seller/delete','Api\User\FavoriteSellereController@delete')->middleware('auth:api');
/**
 * Messages Api
 */
Route::post('message','Api\User\MessageController@usercontact')->middleware('auth:api');
Route::post('postmessage','Api\User\MessageController@postmessage')->middleware('auth:api');
Route::post('sendMessage','Api\User\MessageController@sendMessage')->middleware('auth:api');
Route::get('message/index','Api\User\MessageController@index')->middleware('auth:api');
Route::get('conversation/delete','Api\User\MessageController@delete_conversation')->middleware('auth:api');
/**
 * Ticket Api
 **/
Route::post('addTicket_dispute','Api\User\TicketController@addTicket')->middleware('auth:api');
Route::get('ticketIndex','Api\User\TicketController@index')->middleware('auth:api');
Route::get('ticketDelete','Api\User\TicketController@delete')->middleware('auth:api');
/**
 * Edit Profile & Reset Password Api
 **/
Route::post('editProfile','Api\Auth\AuthController@edit')->middleware('auth:api');
Route::post('reset','Api\Auth\AuthController@reset')->middleware('auth:api');
/**
 * Categories Api
 **/
Route::get('category/show_category','Api\User\Category\CategoryController@show_category');
Route::get('category/category_sub','Api\User\Category\CategoryController@category_sub');
/**
 * Produt Api
 **/
Route::get('category/products','Api\User\Product\ProductController@Category_products');
Route::get('product','Api\User\Product\ProductController@show_products');
Route::get('SubCategoryProducts','Api\User\Product\ProductController@SubCategoryProducts');
Route::get('ChildCategoryProducts','Api\User\Product\ProductController@ChildCategoryProducts');

    Route::post('user-register','Api\Auth\LoginSignupController@register');
    Route::post('logout','Api\Auth\AuthController@logout')->middleware('auth:api');
});

// dd(1);

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
