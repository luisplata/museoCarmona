<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    protected $table = 'category_projects';
    //
    public function categoria()
    {
        return $this->belongsTo('App\Categoria',"padre");
    }
}
