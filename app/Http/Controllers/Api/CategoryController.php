<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\Api\CategoryResource;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    //
    Public function index()
    {
        $category = Category::withCount('recipes')->get();
        return CategoryResource::collection($category);
    }

    public function show(Category $category)
    {
        $category->load(['recipes.category', 'recipes.author']);
        $category->loadCount('recipes');
        return new CategoryResource($category);
    }
}
