<!-- First you need to extend the CB layout -->
@extends('crudbooster::admin_template')
@section('content')
<!-- Your custom  HTML goes here -->
<div class="box">
    <div class="box-header">
    </div>
    <div class="box-body table-responsive no-padding">
    <table id='table_dashboard' class="table table-hover table-striped table-bordered">
        <thead>
            <tr>
                <th class="text-center">Tahun</th>
                <th class="text-center">Bulan</th>
                <th class="text-center">Aset</th>
                <th class="text-center">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($master as $rows)
            <tr>
                <td>{{ $rows->tahun }}</td>
                <td>{{ $rows->bulan }}</td>
                <td>{{ $rows->aset_id }}</td>
                <td></td>
            </tr>
            @endforeach
        </tbody>
    </table>
    </div>
</div>


<!-- ADD A PAGINATION -->

@endsection