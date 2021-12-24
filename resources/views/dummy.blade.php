@extends('layouts.app')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Dummy Check out</h1>
      </div><!-- /.col -->
      
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<div class="content">
  <div class="card">
    
    <div class="card-body">
      <div class="row">
         <div class="w-100">
               <p>Laptop: 3000 KWD</p>
               <form class="w-100"  method="POST" action="/payment/index">

                {{ csrf_field() }}

                <h1>Pay</h1>
                <div class="form-group">

                            <label for="itemName">Item Name:</label>

                            <input type="text" id="itemName" name="itemName" class="form-control" value="Laptops">

                </div>
                <div class="form-group">

                            <label for="quantity">Quantity:</label>

                            <input type="number" id="quantity" name="quantity" class="form-control">

                </div>
                <div class="form-group">

                            <label for="unitPrice">Unit Price:</label>

                            <input type="number" id="unitPrice" name="unitPrice" class="form-control">

                </div>
                <button type="submit" class="btn btn-primary"><i class="fa fa-dollar mr-2"></i>Proceed To Checkout</button>
            </form>
            </div>
         </div>
      </div>
      

  </div>
</div>
@endsection

@push('scripts')
  <script type="text/javascript">
    $("#printOrder").on("click",function () {
      window.print();
    });
  </script>
@endpush
