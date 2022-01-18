<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    protected $table  = 'Employees';

    protected $fillable = [
         'fullname',
         'lastname',
         'email',
         'phone_number',
         'image' ,
         'password',

    ];

}
