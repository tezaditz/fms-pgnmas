<!-- First you need to extend the CB layout -->
@extends('crudbooster::admin_template')
@section('content')
<div style="width:100%;height:100%">
  <iframe src="{{ $parameter->nilai }}" width="100%" height="1000"></iframe>
</div>
@endsection