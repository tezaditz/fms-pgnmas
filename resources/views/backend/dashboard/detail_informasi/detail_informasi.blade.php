@extends('crudbooster::admin_template')

@section('content')
<div class="">
<p><a href='/'><i class='fa fa-chevron-circle-{{ trans('crudbooster.left') }}'></i>
                &nbsp; Kembali ke Dashboard</a></p>
    <div class="panel panel-default">
        <div class="panel-heading">
            Detail List Complain : <strong>{{ $statusTeks }}</strong>
        </div>
        <div class="panel-body">
            
        <table id='table_dashboard' class="table table-hover table-striped table-bordered">
        <thead>
            <tr class="active">
                
                <th width='auto'>Nomor </th>
                <th width='auto'>Tanggal Masuk </th>
                <th width='auto'>Nama Pemohon</th>
                <th width='auto'>Unit Pelapor</th>
                <th width='auto'>Jenis Complain</th>
                <th width='auto'>Uraian</th>
                <th width='auto'>Aset</th>
                <th width='auto'>Lokasi</th>
                <th width='auto'>Status</th>
                <th width='auto' style="text-align:right">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($result as $key => $data)
                <tr>
                    <td>{{ $data->nomor }}</td>
                    <td>{{ $data->tanggal_masuk }}</td>
                    <td>{{ $data->nama_pemohon }}</td>
                    <td>{{ $data->unit_pelapor }}</td>
                    <td>{{ $data->nmJenis }}</td>
                    <td>{{ $data->uraian }}</td>
                    <td>{{ $data->nmAset }}</td>
                    <td>{{ $data->lokasi }}</td>
                    <td>{{ $data->nmStatus }}</td>
                    <td>
                    <div class="button-action">
                    @if($data->status_id == 1 )
                        @if(crudbooster::myPrivilegeName() == "Koordinator Wilayah")
                        <a href="{{ Route('getdatakoorwill' , $data->id) }}" class="btn btn-success btn-xs"><i class="fa fa-pencil"></i></a>
                        @endif
                    @elseif($data->status_id == 2)
                    @elseif($data->status_id == 3 || $data->status_id == 4 || $data->status_id == 5)
                    
                    @elseif($data->status_id == 6)
                    @elseif($data->status_id == 7 )
                    @endif

                    <!-- @if($data->status_id == 5)
                        <a href="{{ Route('getdetail' ,  $data->id) }}" class="btn btn-info btn-xs"><i class="fa fa-eye"></i></a>
                    @endif
                    @if(crudbooster::myPrivilegeName() == "Koordinator Area")
                       
                        @if($data->status_id == 3)
                        <a href="{{ Route('getdataleader' , $data->id) }}" class="btn btn-success btn-xs"><i class="fa fa-pencil"></i></a>
                        @endif
                    @elseif(crudbooster::myPrivilegeName() == "Koordinator Wilayah")
                        @if($data->status_id == 1)
                        <a href="{{ Route('getdatakoorwill' , $data->id) }}" class="btn btn-success btn-xs"><i class="fa fa-pencil"></i></a>
                        @endif
                    @endif -->
                    </div>
                    
                        
                    
                    </td>
                </tr>
            @endforeach
        </tbody>
        </table>
            {{ $result }}
        

        </div>
    </div>
</div>

@endsection