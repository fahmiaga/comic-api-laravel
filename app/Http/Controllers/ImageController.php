<?php

namespace App\Http\Controllers;

use App\Models\Episode;
use App\Models\Image;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $images = Image::where('id_episode', $id)->get();
        $imagesData = [];
        foreach ($images as $image) {
            array_push($imagesData, $image->image);
        }

        $response = [
            'message' => 'success',
            'id_episode' => (int)$id,
            'images' => $imagesData
        ];

        return response()->json($response, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $id)
    {
        if (!$request->hasFile('image')) {
            return response()->json([
                'message' => 'image not found'
            ], 404);
        }

        $images = $request->file('image');

        foreach ($images as $image) {
            $img_link = Cloudinary::upload($image->getRealPath())->getSecurePath();
            $img_name = Cloudinary::getPublicId();

            $data = Image::create([
                'image' => $img_link,
                'id_episode' => $id,
                'image_name' => $img_name
            ]);
        }

        // $images = [];

        // $episode = Episode::where('id_episode', $id)->first();
        // $nameEps = Str::of($episode->name)->slug('-');
        // foreach ($request->file('image') as $image) {
        //     $name = $episode->slug . '-' . $nameEps . '-' . time() . rand(1, 100) . '.' . $image->extension();
        //     $image->move(public_path('images/comic-images'), $name);
        //     $images[] = $name;

        //     Image::create([
        //         'image' => $name,
        //         'id_episode' => $id
        //     ]);
        // }

        $response = [
            'message' => 'Images successfully added',
            'status' => 201,
        ];

        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Image  $image
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Image  $image
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $image = Image::find($id);

        Cloudinary::destroy($image->image_name);

        // $episode = Episode::where('id_episode', $id)->first();

        // $nameEps = Str::of($episode->name)->slug('-');

        // $name = $episode->slug . '-' . $nameEps . '-' . time() . rand(1, 100) . '.' . $request->image->extension();

        // $request->image->move(public_path('images/comic-images'), $name);

        // $currentImage = $image->image;
        // $filePath = public_path('images/comic-images/' . $currentImage);
        // unlink($filePath);

        $images = $request->file('image');

        $img_link = Cloudinary::upload($images->getRealPath())->getSecurePath();
        $img_name = Cloudinary::getPublicId();

        $image->update([
            'image' => $img_link,
            'image_name' => $img_name
        ]);

        $response = [
            'message' => 'Image successfully updated',
            'status' => 201
        ];

        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Image  $image
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $image = Image::find($id);

        // $currentImage = $image->image;
        // $filePath = public_path('images/comic-images/' . $currentImage);
        // unlink($filePath);

        Cloudinary::destroy($image->image_name);

        Image::destroy($id);
        $response = [
            'message' => 'Image succesfully deleted',
            'status' => 200
        ];

        return response()->json($response, 200);
    }
}
