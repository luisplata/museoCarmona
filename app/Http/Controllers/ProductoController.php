<?php

namespace App\Http\Controllers;

use App\Producto;
use Illuminate\Http\Request;
use League\Csv\Reader;
use Illuminate\Support\ServiceProvider;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Response;

class ProductoController extends Controller {


    public function MostrarImagen($nombreArchivo = "falso"){
        $path = new File(storage_path("app/public/".$nombreArchivo));
        dd($path);
        
        $response = Response::make($path, 200);
        $response->header("Content-Type", "image/png");

        
        return $response;
        //$path = Storage::disk("public")->exists($nombreArchivo);
        $path = str_replace("\\","/",$path);
        return response()->file($path,["image/png"]);
        if (!file_exists($path)) {
            $path = storage_path("app/error.jpg");
        }
        $myfile = fopen($path, "w");
        $mimeType = mime_content_type($path);
        $file = File::get($path);
        $type = File::mimeType($path);

        $response = Response::make($path, 200);
        $response->header("Content-Type", $type);

        return $response;
    }

    public function Upload(){
        return view("admin.producto.upload");
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        //
        $datos = array(
            "productos" => Producto::orderby("position")->orderby("category_projects_id")->get()
        );
        return view("admin.producto.dashboard", $datos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        //mostramos el formulario para crear el producto
        $datos = array(
            "categorias" => \App\Categoria::all()
        );
        return view("admin.producto.create", $datos);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
       
        $pathToSave = env("PATH_SAVE_IMAGES");
        $fileUpdate = $request->file("pintura");
        $directory = Storage::putFile('public', new File($fileUpdate), "public");

        //initial posicion
        $initialPath = storage_path("app/".$directory);

        //final position
        $directorySubString = explode("/",$directory); 
        $nameOfFile = 'storage/'.$directorySubString[1];
        $finalpath = $pathToSave.$directorySubString[1];

        if(!file_exists($pathToSave)){
            mkdir($pathToSave,0777,true);
        }

        if(!rename($initialPath, $finalpath)){
            return redirect("admin/producto?tipo=error&mensaje=Ocurrio Un error guardando el archivo, intentelo nuevamente; ".$ex->getMessage());
        }

        try {
            $producto = new Producto();
            $producto->img = $nameOfFile;
            $producto->modal = $nameOfFile;

            $producto->category_projects_id = $request->category_id;
            $producto->title = $request->title;
            $producto->subtitle = $request->subtitle;
            $producto->year = $request->year;
            $producto->medida = $request->medida;
            $producto->position = $request->position;
            
            if ($producto->save()) {
                return redirect("admin/producto?1");
            } else {
                return redirect("admin/producto?2");
            }
        } catch (\Exception $ex) {
            return redirect("admin/producto?tipo=error&mensaje=".$ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        //mostrasmo el producto en especifico
        $datos = array("producto" => \App\Producto::find($id));
        return view("admin.producto.view", $datos);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        //
        $producto = \App\Producto::find($id);
        $producto->checkedSi = $producto->isVideo == "1"? "checked" : "";
        $producto->checkedNo = $producto->isVideo == "0"? "checked" : "";
        $datos = array(
            "producto" => $producto,
            "categorias" => \App\Categoria::all()
        );
        return view("admin.producto.edit", $datos);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        //actualizamos el articulo
        //buscamos el producto
        try {
            $producto = \App\Producto::find($id);

            $producto->category_projects_id = $request->category_id;
            $producto->title = $request->title;
            $producto->subtitle = $request->subtitle;
            $producto->year = $request->year;
            $producto->medida = $request->medida;
            $producto->position = $request->position;

            if($request->hasFile('pintura')){
                /*$split = explode("/",$producto->img);
                $path = storage_path("app/public/".$split[1]);
                unlink($path);

                $fileUpdate = $request->file("pintura");
                $directory = Storage::putFile('public', new File($fileUpdate));
                $directorySubString = explode("/",$directory); 
                $nameOfFile = 'storage/'.$directorySubString[1];*/
                
                $pathToSave = env("PATH_SAVE_IMAGES");
                
                //eliminamos archivo anterior
                $directorySubStringLastFile = explode("/",$producto->img); 
                //dd($pathToSave.$directorySubStringLastFile[1]);
                unlink($pathToSave.$directorySubStringLastFile[1]);

                $fileUpdate = $request->file("pintura");
                $directory = Storage::putFile('public', new File($fileUpdate), "public");

                //initial posicion
                $initialPath = storage_path("app/".$directory);
                //dd($initialPath);

                //final position
                $directorySubString = explode("/",$directory); 
                $nameOfFile = 'storage/'.$directorySubString[1];
                $finalpath = $pathToSave.$directorySubString[1];
                

                if(!file_exists($pathToSave)){
                    mkdir($pathToSave,0777,true);
                }

                if(!rename($initialPath, $finalpath)){
                    return redirect("admin/producto?tipo=error&mensaje=Ocurrio Un error guardando el archivo, intentelo nuevamente; ".$ex->getMessage());
                }

                $producto->img = $nameOfFile;
                $producto->modal = $nameOfFile;
            }
            
            if ($producto->save()) {
                return redirect("admin/producto?mensaje=Se modifico el producto con exito&tipo=success");
            } else {
                return redirect("admin/producto?mensaje=No se modifico el producto con exito&tipo=warning");
            }
        } catch (\Exception $ex) {
            dd($ex);
            return redirect("admin/producto?mensaje=Error&tipo=error");
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        //eliminamos el producto y los mandamos a la verga! :v
        try {
            $producto = Producto::find($id);
            if ($producto->delete()) {
                $pathToSave = env("PATH_SAVE_IMAGES");
                //eliminamos archivo anterior
                $directorySubStringLastFile = explode("/",$producto->img); 
                //dd($pathToSave.$directorySubStringLastFile[1]);
                unlink($pathToSave.$directorySubStringLastFile[1]);

                return redirect("admin/producto?mensaje=Se elimino con exito el producto&tipo=success");
            } else {
                return redirect("admin/producto?mensaje=No elimino con exito el producto&tipo=warining");
            }
        } catch (\Exception $ex) {
            return redirect("admin/producto?mensaje=".$ex->getMessage()."&tipo=error");
        }
    }

}
