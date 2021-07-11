<?php
namespace App\Http\Controllers;

use App\Models\Banners;
use App\Models\CategoryProjects;
use App\Models\Expositions;
use App\Models\IconsInfo;
use App\Models\ImageSculptures;
use App\Models\Info;
use App\Models\Newsletter;
use App\Models\Projects;
use App\Models\Services;
use App\Models\WebInfo;
use App\Models\Works;
use App\Models\YearExpositions;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpParser\Node\Expr\Array_;

class ViewsController extends Controller
{
    public function home()
    {
        $info = Info::find(1);
        $iconsInfo = IconsInfo::all();
        $banner = Banners::where('status','activo')->get();
        $webInfo = WebInfo::all();
        $imageSculpture = ImageSculptures::where('status','activo')->get();
        $services = Services::where('status','activo')->get();
        $categoryProjects = CategoryProjects::where('status','activo')->orderBy('order','desc')->get();
        $projects = Projects::where('status','activo')
            ->where('category_projects_id',$categoryProjects[0]->id)
            ->orderBy('position','asc')
            ->get();
        $works = Works::where('status','activo')->get();
        $yearExposition = YearExpositions::where('status','activo')
            ->orderBy('name','asc')
            ->get();
        $contador = 0;
        foreach ($yearExposition as $key => $y){
            $expositions = Expositions::where('status','activo')
                ->where('category_expositions_id',1)
                ->where('year_expositions_id',$y->id)
                ->count();
            if($expositions>=1){
                $array_resultante[$contador]= $y;
                $contador++;
            }
        }
        
        return view('index',[
            'info'=>$info,
            'iconsInfo'=>$iconsInfo,
            'banner'=>$banner,
            'webInfo'=>$webInfo,
            'imageSculpture'=>$imageSculpture,
            'services'=>$services,
            'categoryProjects'=>$categoryProjects,
            'projects'=>$projects,
            'works'=>$works,
            'yearExposition'=>$array_resultante
        ]);
    }

    public function GetGalery(Request $request)
    {
        $id = $request->id;
        $projects = Projects::where('status','activo')
            ->where('category_projects_id',$id)
            ->orderBy('position','asc')
            ->get();
        return view('partials.gallery',[
            'projects'=>$projects,
        ]);
    }

    public function GetExpositions(Request $request)
    {
        $id = $request->id;
        $yearExposition = YearExpositions::where('status','activo')
            ->orderBy('name','asc')
            ->get();
        $count = 0;
        foreach ($yearExposition as $key => $y){
            $expositions = Expositions::where('status','activo')
                ->where('category_expositions_id',$id)
                ->where('year_expositions_id',$y->id)
                ->count();
            if($expositions>=1){
                $array_resultante[$count]= $y;
                $count++;
            }
        }
        return view('partials.expositions',[
            'yearExposition'=>$array_resultante,
            'category_id'=>$id
        ]);
    }

    public function Newsletter(Request $request)
    {
        try
        {
            $email = $request->input('emailNews');
            $news = Newsletter::all();
            foreach ($news as $key => $n)
            {
                if($n->mail == $email)
                {
                    return 2;
                }
            }
            $new = new Newsletter();
            $new->mail = $email;
            if ($new->save())
            {
                return 1;
            } else {
                return 0;
            }
        }catch (Exception $e) {
            return " Error: " . $e->getMessage();
        }
    }

}
