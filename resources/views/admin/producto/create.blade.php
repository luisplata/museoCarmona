@extends("plantilla.app")

@section("contenido")
{{Form::open(["url"=>"admin/producto","method"=>"POST",'files' => 'true'])}}

<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Titulo <span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" name="title" id="title" required="required" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="subtitle">Sub Titulo
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="subtitle" name="subtitle" value="" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Categoria </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <select class="form-control col-md-7 col-xs-12" name="category_id">
        @foreach($categorias as $categoria)
            <option value="{{$categoria->id}}">{{$categoria->name}}</option>
        @endforeach
        </select>
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="year">Año
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="year" name="year" value="" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="medida">Medidas
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="medida" name="medida" value="" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="position">Posición
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="position" name="position" value="" class="form-control col-md-7 col-xs-12">
    </div>
</div>
<div class="clearfix"></div>
<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="pintura">Imagen<span class="required">*</span>
    </label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="file" id="pintura" name="pintura" required="required" class="form-control col-md-7 col-xs-12">
    </div>
</div>

<div class="clearfix"></div>
<div class="ln_solid"></div>
<div class="form-group">
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
        <button type="reset" class="btn btn-primary">Cancel</button>
        <button type="submit" class="btn btn-success">Submit</button>
    </div>
</div>


{{Form::close()}}
@endsection