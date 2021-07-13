@extends("plantilla.app")

@section("contenido")
<div class="col-md-12 col-sm-12 col-xs-12 text-right">
    <a class="btn btn-primary" href="{{url('admin/producto/create')}}"><i class="fa fa-plus"></i> Creat Cuadro</a>
</div>

<table class="table table-striped table-hover" id="tableData">
    <thead>
      <tr>
        <th scope="col">Posición</th>
        <th scope="col">Titulo</th>
        <th scope="col">Sub titulo</th>
        <th scope="col">Categoria</th>
        <th scope="col">Año</th>
        <th scope="col">Medidas</th>
        <th scope="col">Imagen</th>
        <th scope="col">Editar</th>
        <th scope="col">Eliminar</th>
      </tr>
    </thead>
    <tbody>
        @foreach($productos as $producto)
            <tr>
                <th>{{$producto->position}}</th>
                <th>{{$producto->title}}</th>
                <th>{{$producto->subtitle}}</th>
                <td>{{$producto->categoria->name}}</td>
                <th>{{$producto->year}}</th>
                <th>{{$producto->medida}} {{base_path("storage/app/public/".$producto->img)}}</th>
                <td onclick="OpenInPopUpImage('{{asset($producto->img)}}')"> <span class="btn btn-default">Click Para Ver Imagen</span></td>
                <td><a class="btn btn-primary" href="{{url("admin/producto/$producto->id/edit")}}"><i class="fa fa-edit"></i> Editar</a></td>
                <td>{{Form::open(["url"=>"admin/producto/$producto->id","method"=>"DELETE"])}}
                    <button type="submit" class="btn btn-primary"><i class="fa fa-ellipsis-h"></i> Eliminar</button>
                    {{Form::close()}}</td>
            </tr>
        @endforeach
    </tbody>
</table>

<script src="//code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="//cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
<br><script src = "//cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js" defer ></script>
<script>
    $(document).ready( function () {
        /*$('#tableData').DataTable({
        "order": [[ 0, "desc" ]]
    });*/
    } );

    function OpenInPopUpImage(imagen){
        window.open(imagen,imagen,'height=500,width=400,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
    }
</script>
@endsection