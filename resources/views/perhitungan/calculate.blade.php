@extends('layouts.global')
@section('title', 'Perhitungan MWP')

@section('content')
<section class="content-header">
    <ol class="breadcrumb">
      <li><a href="{{url('home')}}"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="{{url('nilai')}}"> Nilai</a></li>
      <li class="active">Perhitungan Metode Weighted Product</li>
    </ol>
</section>
<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-solid">
        <!-- /.box-header -->
        <div class="box-body">
          <!-- Hasil Normalisasi Bobot Kriteria -->
          <div class="box-header with-border">
            <h4 class="box-title">
              Hasil Normalisasi Bobot Kriteria
            </h4>
          </div>
          <div class="box-body">
            <table class="table table-bordered" id="weight">
              <thead>
                <tr>
                  <th>Kriteria</th>
                  <th>Weight</th>
                </tr>
              </thead>
              <tbody>
                @foreach($kriteria as $k)
                <tr>
                  <td>{{ $k->nama }}</td>
                  <td>{{ $data['weight'][$k->id] }}</td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
          <!-- Nilai Vektor S -->
          <div class="box-header with-border">
            <h4 class="box-title">
              Nilai Vektor S
            </h4>
          </div>
          <div class="box-body">
            <table class="table table-bordered" id="svalue">
              <thead>
                <tr>
                  <th>Kandidat</th>
                  <th>Nilai S</th>
                </tr>
              </thead>
              <tbody>
                @foreach($penerima as $p)
                <tr>
                  <td>{{ $p->nama }}</td>
                  <td>
                    @foreach($data['s'] as $d)
                    @if($p->id == $d['penerima'])
                    {{ $d['s'] }}&nbsp;
                    @endif
                    @endforeach
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
          <!-- Nilai Vektor V -->
          <div class="box-header with-border">
            <h4 class="box-title">
              Nilai Vektor V
            </h4>
          </div>
          <div class="box-body">
            <table class="table table-bordered" id="vector">
              <thead>
                <tr>
                  <th>Kandidat</th>
                  <th>Nilai V</th>
                </tr>
              </thead>
              <tbody>
                @foreach($penerima as $p)
                <tr>
                  <td>{{ $p->nama }}</td>
                  <td>
                    @if(array_key_exists($p->id, $data['v']))
                    {{ $data['v'][$p->id] }}
                    @endif
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
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
