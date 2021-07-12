@extends("plantilla.app")

@section("contenido")
<div class="col-md-12 col-sm-12 col-xs-12 text-right">
    <ul class="pagination pagination-split">
        <li><a href="{{url('admin/categoria/create')}}"><i class="fa fa-plus"></i> Crear</a></li>
    </ul>
</div>
<div class="container row">
@foreach($categorias as $categoria)
<div class="col-sm-4 profile_details center">
    <div class="well profile_view row">
        <div class="">
            <div class="text-center">
                <h2>{{$categoria->name}}</h2>
            </div>
            <div class="text-center">
                <h2>{{$categoria->order}}</h2>
            </div>
        </div>
        <div class="col-xs-12 bottom text-center">
            <div class="col-xs-12 col-sm-12 emphasis">
                <a class="btn btn-primary" href="{{url("admin/categoria/$categoria->id")}}"><i class="fa fa-eye"></i> Ver</a>
                <a class="btn btn-primary" href="{{url("admin/categoria/$categoria->id/edit")}}"><i class="fa fa-edit"></i> Editar</a>
                {{Form::open(["url"=>"admin/categoria/$categoria->id","method"=>"DELETE"])}}
                <button type="submit" class="btn btn-primary"><i class="fa fa-ellipsis-h"></i> Eliminar</button>
                {{Form::close()}}
            </div>
        </div>
    </div>
</div>
@endforeach
</div>
@endsection