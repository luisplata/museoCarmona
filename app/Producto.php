<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    
    protected $table = 'projects';

    protected $hidden = ['hotLink','publication_date','created_at','updated_at','id','imagen','categorias_id','estado'];
    public function categoria() {
        return $this->belongsTo('App\Categoria',"category_projects_id");
    }
    public function Visitas(){
        return $this->hasOne(VisitPost::class);
    }
    public function LogVisitas(){
        return $this->hasMany(LogVisit::class);
    }
}
