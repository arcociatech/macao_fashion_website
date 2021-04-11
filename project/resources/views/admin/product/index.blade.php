@extends('layouts.admin')

@section('content')
					<input type="hidden" id="headerdata" value="{{ __("PRODUCT") }}">
					<div class="content-area">
						<div class="mr-breadcrumb">
							<div class="row">
								<div class="col-lg-12">
										<h4 class="heading">{{ __("Products") }}</h4>
										<ul class="links">
											<li>
												<a href="{{ route('admin.dashboard') }}">{{ __("Dashboard") }} </a>
											</li>
											<li>
												<a href="javascript:;">{{ __("Products") }} </a>
											</li>
											<li>
												<a href="{{ route('admin-prod-index') }}">{{ __("All Products") }}</a>
											</li>
										</ul>
								</div>
							</div>
						</div>
						<div class="product-area">
							<div class="row">
								<div class="col-lg-12">
									<div class="mr-table allproduct">

                        @include('includes.admin.form-success')

										<div class="table-responsiv">
												<table id="geniustable" class="table table-hover dt-responsive" cellspacing="0" width="100%">
													<thead>
														<tr>
                                                            <th>{{ __("Name") }}</th>
                                                            <th>{{ __("Photo") }}</th>
									                        <th>{{ __("Type") }}</th>
									                        <th>{{ __("Stock") }}</th>
									                        <th>{{ __("Price") }}</th>
									                        <th>{{ __("Status") }}</th>
									                        <th>{{ __("Options") }}</th>
														</tr>
													</thead>
												</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



{{-- HIGHLIGHT MODAL --}}

										<div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="modal2" aria-hidden="true">


										<div class="modal-dialog highlight" role="document">
										<div class="modal-content">
												<div class="submit-loader">
														<img  src="{{asset('assets/images/'.$gs->admin_loader)}}" alt="">
												</div>
											<div class="modal-header">
											<h5 class="modal-title"></h5>
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											</div>
											<div class="modal-body">

											</div>
											<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __("Close") }}</button>
											</div>
										</div>
										</div>
</div>

{{-- HIGHLIGHT ENDS --}}

{{-- CATALOG MODAL --}}

<div class="modal fade" id="catalog-modal" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

	<div class="modal-header d-block text-center">
		<h4 class="modal-title d-inline-block">{{ __("Update Status") }}</h4>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
	</div>


      <!-- Modal body -->
      <div class="modal-body">
            <p class="text-center">{{ __("You are about to change the status of this Product.") }}</p>
            <p class="text-center">{{ __("Do you want to proceed?") }}</p>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-dismiss="modal">{{ __("Cancel") }}</button>
            <a class="btn btn-success btn-ok">{{ __("Proceed") }}</a>
      </div>

    </div>
  </div>
</div>

{{-- CATALOG MODAL ENDS --}}


{{-- DELETE MODAL --}}

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">

	<div class="modal-header d-block text-center">
		<h4 class="modal-title d-inline-block">{{ __("Confirm Delete") }}</h4>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
	</div>

      <!-- Modal body -->
      <div class="modal-body">
            <p class="text-center">{{ __("You are about to delete this Product.") }}</p>
            <p class="text-center">{{ __("Do you want to proceed?") }}</p>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-dismiss="modal">{{ __("Cancel") }}</button>
            <a class="btn btn-danger btn-ok">{{ __("Delete") }}</a>
      </div>

    </div>
  </div>
</div>

{{-- DELETE MODAL ENDS --}}


{{-- GALLERY MODAL --}}

		<div class="modal fade" id="setgallery" tabindex="-1" role="dialog" aria-labelledby="setgallery" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
				<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">{{ __("Image Gallery") }}</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="top-area">
						<div class="row">
							<div class="col-sm-6 text-right">
								<div class="upload-img-btn">
									<form  method="POST" enctype="multipart/form-data" id="form-gallery">
										{{ csrf_field() }}
									<input type="hidden" id="pid" name="product_id" value="">
									<input type="file" name="gallery[]" class="hidden" id="uploadgallery" accept="image/*" multiple>
											<label for="image-upload" id="prod_gallery"><i class="icofont-upload-alt"></i>{{ __("Upload File") }}</label>
									</form>
								</div>
							</div>
							<div class="col-sm-6">
								<a href="javascript:;" class="upload-done" data-dismiss="modal"> <i class="fas fa-check"></i> {{ __("Done") }}</a>
							</div>
							<div class="col-sm-12 text-center">( <small>{{ __("You can upload multiple Images") }}.</small> )</div>
						</div>
					</div>
					<div class="gallery-images">
						<div class="selected-image">
							<div class="row">


							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>


{{-- GALLERY MODAL ENDS --}}
{{-- MAIN IMAGE MODAL --}}

		<div class="modal fade" id="setMainImage" tabindex="-1" role="dialog" aria-labelledby="setMainImage" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
				<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">Main Image</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="top-area">
						<div class="row">
							<div class="col-sm-6 text-right">
								<div class="upload-img-btn">
									<form  method="POST" enctype="multipart/form-data" id="form-setMainImage">
										@csrf
									<input type="hidden" id="main_pid" name="product_id" value="">
									<input type="file" name="setMainImage" class="hidden" id="uploadsetMainImage" accept="image/*" multiple>
											<label for="image-upload" id="prod_setMainImage"><i class="icofont-upload-alt"></i>{{ __("Upload File") }}</label>
									</form>
								</div>
							</div>
							<div class="col-sm-6">
								<a href="javascript:;" class="upload-done" data-dismiss="modal"> <i class="fas fa-check"></i> {{ __("Done") }}</a>
							</div>
							{{-- <div class="col-sm-12 text-center">( <small>{{ __("You can upload multiple Images") }}.</small> )</div> --}}
						</div>
					</div>
					<div class="gallery-images">
						<div class="selected-image">
							<div class="row">


							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>


{{-- MAIN IMAGE MODAL ENDS --}}
{{-- DESCRIPTION MODAL --}}

		<div class="modal fade" id="setDescription" tabindex="-1" role="dialog" aria-labelledby="setDescription" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
				<div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Product Description</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="top-area">
                            <div class="row">
                                <div class="col-12">
                                    <div>
                                        <form  method="POST"  id="form-setDescription">
                                            {{ csrf_field() }}
                                            <input type="hidden" id="description_pid" name="product_id" value="">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="left-area">
                                                        <h4 class="heading">
                                                            {{ __('Product Description') }}
                                                        </h4>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="text-editor">
                                                        <textarea id="product-description" class="nic-edit-p " name="description"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-success col-3 offset-5 mt-2">
                                                Submit
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
		</div>


{{-- DESCRIPTION MODAL ENDS --}}

@endsection



@section('scripts')


{{-- DATA TABLE --}}

    <script type="text/javascript">

		var table = $('#geniustable').DataTable({
			   ordering: false,
               processing: true,
               serverSide: true,
               "pageLength": 100,
               ajax: '{{ route('admin-prod-datatables') }}',
               columns: [
                        { data: 'name', name: 'name' },
                        { data: 'photo', name: 'photo', orderable:false,searchable:false },
                        { data: 'type', name: 'type' },
                        { data: 'stock', name: 'stock' },
                        { data: 'price', name: 'price' },
                        { data: 'status', searchable: false, orderable: false},
            			{ data: 'action', searchable: false, orderable: false }

                     ],
                language : {
                	processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
                },
				drawCallback : function( settings ) {
	    				$('.select').niceSelect();
				}
            });

      	$(function() {
        $(".btn-area").append('<div class="col-sm-4 table-contents">'+
        	'<a class="add-btn" href="{{route('admin-prod-types')}}">'+
          '<i class="fas fa-plus"></i> <span class="remove-mobile">{{ __("Add New Product") }}<span>'+
          '</a>'+
          '</div>');
      });



{{-- DATA TABLE ENDS--}}


</script>


<script type="text/javascript">


// Gallery Section Update

    $(document).on("click", ".set-gallery" , function(){
        var pid = $(this).find('input[type=hidden]').val();
        $('#pid').val(pid);
        $('.selected-image .row').html('');
        $.ajax({
            type: "GET",
            url:"{{ route('admin-gallery-show') }}",
            data:{id:pid},
            success:function(data){
                if(data[0] == 0)
                {
                $('.selected-image .row').addClass('justify-content-center');
                $('.selected-image .row').html('<h3>{{ __("No Images Found.") }}</h3>');
                }
                else {
                $('.selected-image .row').removeClass('justify-content-center');
                $('.selected-image .row h3').remove();
                    var arr = $.map(data[1], function(el) {
                    return el });

                    for(var k in arr)
                    {
                $('.selected-image .row').append('<div class="col-sm-6">'+
                                '<div class="img gallery-img">'+
                                    '<span class="remove-img"><i class="fas fa-times"></i>'+
                                    '<input type="hidden" value="'+arr[k]['id']+'">'+
                                    '</span>'+
                                    '<a href="'+'{{asset('assets/images/galleries').'/'}}'+arr[k]['photo']+'" target="_blank">'+
                                    '<img src="'+'{{asset('assets/images/galleries').'/'}}'+arr[k]['photo']+'" alt="gallery image">'+
                                    '</a>'+
                                '</div>'+
                            '</div>');
                    }
                }

            }
        });
    });
    $(document).on("click", ".set-main-image" , function(){
        var pid = $(this).find('input[type=hidden]').val();
        $('#main_pid').val(pid);
        $('.selected-image .row').html('');
            $.ajax({
                    type: "GET",
                    url:"{{ route('admin-mainimage-show') }}",
                    data:{id:pid},
                    success:function(data){
                      if(data[0] == 0)
                      {
	                    $('.selected-image .row').addClass('justify-content-center');
	      				$('.selected-image .row').html('<h3>{{ __("No Images Found.") }}</h3>');
     				  }
                      else {
	                    $('.selected-image .row').removeClass('justify-content-center');
	      				$('.selected-image .row h3').remove();
                          var arr = $.map(data[1], function(el) {
                          return el });

                          for(var k in arr)
                          {
        				$('.selected-image .row').append('<div class="col-sm-6">'+
                            '<div class="img gallery-img">'+
                                // '<span class="remove-img"><i class="fas fa-times"></i>'+
                                // '<input type="hidden" value="'+arr[k]['id']+'">'+
                                // '</span>'+
                                '<a href="'+'{{asset('assets/images/products').'/'}}'+arr[k]['photo']+'" target="_blank">'+
                                '<img src="'+'{{asset('assets/images/thumbnails').'/'}}'+arr[k]['photo']+'" alt="gallery image">'+
                                '</a>'+
                            '</div>'+
                        '</div>');
                          }
                       }

                    }
                  });
    });
    $(document).on("click", ".set-description" , function(){
        var pid = $(this).find('input[type=hidden]').val();
        $('#description_pid').val(pid);
        $('textarea').attr("data-product-id",pid);
        $.ajax({
            type: "GET",
            url:"{{ route('admin-description-show') }}",
            data:{id:pid},
            success:function(data){
                // console.log(data.details);
                // $(".nicEdit-main").val(data.details)
                // $("textarea[data-product-id="+pid+"]").val(data.details)
            }
        });

    });


  $(document).on('click', '.remove-img' ,function() {
    var id = $(this).find('input[type=hidden]').val();
    $(this).parent().parent().remove();
	    $.ajax({
	        type: "GET",
	        url:"{{ route('admin-gallery-delete') }}",
	        data:{id:id}
	    });
  });

  $(document).on('click', '#prod_gallery' ,function() {
    $('#uploadgallery').click();
  });
  $(document).on('click', '#prod_setMainImage' ,function() {
    $('#uploadsetMainImage').click();
  });


  $("#uploadgallery").change(function(){
    $("#form-gallery").submit();
  });
  $("#uploadsetMainImage").change(function(){
    $("#form-setMainImage").submit();
  });

  $(document).on('submit', '#form-gallery' ,function() {
		  $.ajax({
		   url:"{{ route('admin-gallery-store') }}",
		   method:"POST",
		   data:new FormData(this),
		   dataType:'JSON',
		   contentType: false,
		   cache: false,
		   processData: false,
		   success:function(data)
		   {
		    if(data != 0)
		    {
	                    $('.selected-image .row').removeClass('justify-content-center');
	      				$('.selected-image .row h3').remove();
		        var arr = $.map(data, function(el) {
		        return el });
		        for(var k in arr)
		           {
        				$('.selected-image .row').append('<div class="col-sm-6">'+
                            '<div class="img gallery-img">'+
                                '<span class="remove-img"><i class="fas fa-times"></i>'+
                                '<input type="hidden" value="'+arr[k]['id']+'">'+
                                '</span>'+
                                '<a href="'+'{{asset('assets/images/galleries').'/'}}'+arr[k]['photo']+'" target="_blank">'+
                                '<img src="'+'{{asset('assets/images/galleries').'/'}}'+arr[k]['photo']+'" alt="gallery image">'+
                                '</a>'+
                            '</div>'+
                        '</div>'
                        );
		            }
		    }

		                       }

		  });
		  return false;
 });
  $(document).on('submit', '#form-setMainImage' ,function() {
		  $.ajax({
		   url:"{{ route('admin-mainimage-store') }}",
		   method:"POST",
		   data:new FormData(this),
		   dataType:'JSON',
		   contentType: false,
		   cache: false,
		   processData: false,
		   success:function(data)
		   {
		    if(data != 0)
		    {
	                    $('.selected-image .row').removeClass('justify-content-center');
	      				$('.selected-image .row h3').remove();
		        var arr = $.map(data, function(el) {
		        return el });
		        for(var k in arr)
		           {
        				$('.selected-image .row').append('<div class="col-sm-6">'+
                                        '<div class="img gallery-img">'+
                                            // '<span class="remove-img"><i class="fas fa-times"></i>'+
                                            // '<input type="hidden" value="'+arr[k]['id']+'">'+
                                            // '</span>'+
                                            '<a href="'+'{{asset('assets/images/products').'/'}}'+arr[k]['photo']+'" target="_blank">'+
                                            '<img src="'+'{{asset('assets/images/thumbnails').'/'}}'+arr[k]['photo']+'" alt="gallery image">'+
                                            '</a>'+
                                        '</div>'+
                                  	'</div>');
		            }
		    }

		                       }

		  });
		  return false;
 });
  $(document).on('submit', '#form-setDescription' ,function() {
        $.ajax({
		   url:"{{ route('admin-description-store') }}",
		   method:"POST",
		   data:new FormData(this),
		   dataType:'JSON',
		   contentType: false,
		   cache: false,
		   processData: false,
		   success:function(data)
		   {
                // $("#product-description").val(data.details);
           }
		  });
		  return false;
 });


// Gallery Section Update Ends


</script>




@endsection
