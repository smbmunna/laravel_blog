<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    protected $fillable= ['file'];



    public $upload_dir= '/images/';




    //Displaying Photo using accessor
    public function getFileAttribute($photo){
        return $this->upload_dir . $photo;
    }
}
