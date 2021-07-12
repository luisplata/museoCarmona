@extends("plantilla.app")

@section("contenido")
{{Form::open(["url"=>["admin/producto", $producto->id],"method"=>"PUT", 'files' => true])}}

<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Titulo <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input value="{{$producto->nombre}}" type="text" name="nombre" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="imagen">Sub titulo
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="imagen" name="imagen" value="{{$producto->imagen}}" class="form-control col-md-7 col-xs-12">
    </div>
</div>

<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Año <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="nombre-link" name="nombreLink" required="required" value="{{$producto->NombreLink}}" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Medidas <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="hot-link" name="hotLink" required="required" value="{{$producto->hotLink}}" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Categoria </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <select class="form-control col-md-7 col-xs-12" name="categoria_id">
            @foreach($categorias as $cate)
            @if($producto->categoria->id == $cate->id)
            <option selected="" value="{{$cate->id}}">{{$cate->name}}</option>
            @else
            <option value="{{$cate->id}}">{{$cate->name}}</option>
            @endif
            @endforeach
        </select>
    </div>
</div>

<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Imagen
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="url" id="url_video" name="url_video" value="{{$producto->url_video}}" class="form-control col-md-7 col-xs-12">
    </div>
</div>

<div class="clearfix"></div>
<div class="ln_solid"></div>
<div class="form-group">
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
        <a class="btn btn-primary" href="{{url('admin/producto')}}">Cancelar</a>
        <button type="submit" class="btn btn-success">Guardar</button>
    </div>
</div>


{{Form::close()}}
@endsection