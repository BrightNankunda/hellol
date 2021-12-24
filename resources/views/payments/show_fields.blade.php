<!-- Id Field -->
<div class="form-group row col-6">
  {!! Form::label('id', 'Id:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->id !!}</p>
  </div>
</div>

<!--Unit Price Field -->
<div class="form-group row col-6">
  {!! Form::label('UnitPrice', 'UnitPrice:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->UnitPrice !!}</p>
  </div>
</div>

<!--Unit Price Field -->
<div class="form-group row col-6">
  {!! Form::label('InvoiceValue', 'InvoiceValue:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->InvoiceValue !!}</p>
  </div>
</div>

<!-- CustomerField Field -->
<div class="form-group row col-6">
  {!! Form::label('CustomerField', 'CustomerField:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->CustomerField !!}</p>
  </div>
</div>

<!-- User Id Field -->
<div class="form-group row col-6">
  {!! Form::label('CustomerDefinedField', 'User Id:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->CustomerDefinedField !!}</p>
  </div>
</div>

<!-- Created At Field -->
<div class="form-group row col-6">
  {!! Form::label('created_at', 'Created At:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->created_at !!}</p>
  </div>
</div>

<!-- Updated At Field -->
<div class="form-group row col-6">
  {!! Form::label('updated_at', 'Updated At:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $payment->updated_at !!}</p>
  </div>
</div>

