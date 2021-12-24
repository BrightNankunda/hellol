@extends('layouts.app')

@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <!-- /.col -->
      
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<div class="content">
  <div class="card">
    <div class="card-body">
      <div class="row">
          <div class="w-100">
          {{$user->name}}
            <div class="text-sucess">Hello {{$CustomerName}}, your payment for {{$ItemName}} at {{$InvoiceDisplayValue}} is successful<div>
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
