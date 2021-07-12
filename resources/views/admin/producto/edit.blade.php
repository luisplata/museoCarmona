@extends("plantilla.app")

@section("contenido")
{{Form::open(["url"=>["admin/producto", $producto->id],"method"=>"PUT", 'files' => true])}}
<div class="col-sm-8">
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title">Titulo <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input value="{{$producto->title}}" type="text" name="title" id="title" required="required" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="subtitle">Sub titulo
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="subtitle" name="subtitle" value="{{$producto->subtitle}}" class="form-control col-md-7 col-xs-12">
    </div>
</div>

<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="year">Año <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="year" name="year" required="required" value="{{$producto->year}}" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="medida">Medidas <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="medida" name="medida" required="required" value="{{$producto->medida}}" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="position">Posición <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="position" name="position" required="required" value="{{$producto->position}}" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Categoria </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <select class="form-control col-md-7 col-xs-12" name="category_id">
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
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="pintura">Imagen<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="file" id="pintura" name="pintura" class="form-control col-md-7 col-xs-12">
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
</div>
<div class="col-sm-4">
    <div class="form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Imagen Actual
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <img src="{{asset($producto->img)}}" alt="" class="col-sm-12">
        </div>
    </div>
</div>
{{Form::close()}}
@endsection