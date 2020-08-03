<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')

<a href="/pgnmas/mnilai"><< Back to List</a>
<div class="panel panel-default">
    <div class="panel-heading">
        History Penilaian
    </div>
    <div class="panel-body">
        <table class="table table-hover table-striped table-bordered">
            <thead>
                <tr>
                    <th>User</th>
                    <th>Tanggal Kirim</th>
                    <th>Ketersediaan Fasilitas</th>
                    <th>Nilai Maksimum</th>
                    <th>Persentase</th>
                    <th>Pencapaian</th>
                    <th>Catatan</th>
                    
                </tr>
            </thead>
            <tbody>
                @foreach($history as $dataHistory)
                    <tr>
                        <td>{{ $dataHistory->username }} ({{ $dataHistory->name }})</td>
                        <td>{{ date('d-M-Y H:i:s' , strtotime($dataHistory->tanggal_approval)) }}</td>
                        <td class="text-right">{{ $dataHistory->ketersediaan_fasilitas }}</td>
                        <td class="text-right">{{ $dataHistory->nilai_maksimum }}</td>
                        <td class="text-right">{{ number_format($dataHistory->persentase_pelaksanaan , 2 , "." , ',') }}</td>
                        <td class="text-right">{{ number_format($dataHistory->pencapaian, 2 , "." , ',') }}</td>
                        <td>{{ $dataHistory->catatan }}</td>
                        
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection