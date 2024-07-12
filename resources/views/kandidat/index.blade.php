@extends('layouts.global')
@section('title', 'Data Kandidat')

@section('content')
<section class="content-header">
    <ol class="breadcrumb">
      <li><a href="{{url('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Data Alternatif</li>
    </ol>
</section>
  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        
        <div class="box">
          <div class="box-body">
            <div class="table table-responsive">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Jenis Kelamin</th>
                        <th>No Telphone</th>
                        <th></th>
                    </tr>
                </thead>

                <tbody>
                    @foreach ($kandidats as $no=>$kandidat)
                        <tr>
                            <td>{{$no + 1}}</td>
                            <td>{{$kandidat->nama}}</td>
                            <td>{{($kandidat->jk == 'L') ? 'laki-laki' : 'perempuan'}}</td>
                            <td>{{$kandidat->telp}}</td>

                            <td>
                                <a  class="btn btn-info text-white btn-sm" href="{{route('kandidat.show',$kandidat->id)}}" data-toggle="tooltip" data-placement="bottom" title="lihat data">Preview</a>
                                <a  class="btn btn-warning text-white btn-sm" href="{{route('kandidat.edit',$kandidat->id)}}" data-toggle="tooltip" data-placement="bottom" title="ubah data">Edit</a>
                                <form id="delete-form-{{ $kandidat->id }}" action="{{ route('kandidat.destroy',$kandidat->id) }}" style="display: none;" method="POST">
                                    @csrf
                                    @method('DELETE')
                                </form>
                                <button data-toggle="tooltip" data-placement="bottom" title="hapus data" type="button" class="btn btn-danger text-white btn-sm" onclick="if(confirm('Apakah anda yakin ingin menghapus data ini?')){
                                    event.preventDefault();
                                    document.getElementById('delete-form-{{ $kandidat->id }}').submit();
                                }else {
                                    event.preventDefault();
                                        }">Hapus</button>
                                
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
          </div>
              <a href="{{ route('kandidat.create') }}" class="margin-bottom-2 btn btn-primary btn-sm btn-rounded btn-fw">Tambah Alternatif</a>  
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
@endsection
@push('javascript')
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip()
        });
    </script>
@endpush
