<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Override;

class Product extends Model
{

    use HasFactory;

    protected $fillable = ['name', 'slug', 'category_id', 'price', 'quantity', 'description', 'thumbnail'];

    public function colors()
    {
        return $this->belongsToMany(Color::class);
    }

    public function sizes()
    {
        return $this->belongsToMany(Size::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    #[Override]
    public function getRouteKeyName()
    {
        return "slug";
    }
}
