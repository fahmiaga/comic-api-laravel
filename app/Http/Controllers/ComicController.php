<?php

namespace App\Http\Controllers;

use App\Models\Comic;
use App\Models\Comic_genre;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class ComicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $comic = Comic::all();
        $response = [
            'message' => 'success',
            'status' => 200,
            'data' => $comic,
        ];
        return response()->json($response, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'synopsis' => 'required',
            'comic_image' => 'required',
            'drop_image' => 'required'
        ]);

        $slug = Str::of($request->title)->slug('-');

        $comic_image = $request->file('comic_image');
        $comic_img_link = Cloudinary::upload($comic_image->getRealPath())->getSecurePath();

        $comic_image_name = Cloudinary::getPublicId();

        $drop_image = $request->file('drop_image');

        $drop_img_link = Cloudinary::upload($drop_image->getRealPath())->getSecurePath();

        $drop_image_name = Cloudinary::getPublicId();

        try {
            $comic = Comic::create([
                'title' => $request->title,
                'synopsis' => $request->synopsis,
                'slug' => $slug,
                'genre' => $request->genre,
                'comic_image' => $comic_img_link,
                'comic_name' => $comic_image_name,
                'drop_image' => $drop_img_link,
                'drop_name' => $drop_image_name,
                'rating' => 0
            ]);


            // foreach ($request->id_genre as  $genre) {
            //     Comic_genre::create([
            //         'id_genre' => $genre,
            //         'id_comic' => $comic->id,
            //     ]);
            // }

            $response = [
                'message' => 'Comic added ',
                'status' => 201,
                'data' => $comic,
            ];
            return response()->json($response, Response::HTTP_CREATED);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'failed' . $e->getMessage()
            ]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $comic = Comic::find($id);
        $response = [
            'message' => 'success ',
            'status' => 200,
            'data' => $comic
        ];
        return response()->json($response, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'synopsis' => 'required',
            'comic_image' => 'required',
            'drop_image' => 'required'
        ]);

        $comic_id = Comic::find($id);

        $slug = Str::of($request->title)->slug('-');

        Cloudinary::destroy($comic_id->comic_name);
        Cloudinary::destroy($comic_id->drop_name);

        $comic_image = $request->file('comic_image');
        $comic_img_link = Cloudinary::upload($comic_image->getRealPath())->getSecurePath();

        $comic_image_name = Cloudinary::getPublicId();

        $drop_image = $request->file('drop_image');

        $drop_img_link = Cloudinary::upload($drop_image->getRealPath())->getSecurePath();

        $drop_image_name = Cloudinary::getPublicId();

        try {
            $comic = $comic_id->update([
                'title' => $request->title,
                'synopsis' => $request->synopsis,
                'slug' => $slug,
                'genre' => $request->genre,
                'comic_image' => $comic_img_link,
                'comic_name' => $comic_image_name,
                'drop_image' => $drop_img_link,
                'drop_name' => $drop_image_name,
                'rating' => 0
            ]);
            $response = [
                'message' => 'Comic successfully updated ',
                'status' => 200,
                'data' => $comic,
            ];
            return response()->json($response, 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'failed' . $e->getMessage()
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $comic = Comic::find($id);

        Cloudinary::destroy($comic->comic_name);
        Cloudinary::destroy($comic->drop_name);
        Comic::destroy($id);

        $response = [
            'message' => 'Episode successfully deleted',
            'status' => 200
        ];

        return response($response, 200);
    }
    /**
     * Search for a title
     *
     * @param  str  $title
     * @return \Illuminate\Http\Response
     */
    public function search($title)
    {
        $comic = Comic::where('title', 'like', '%' . $title . '%')->get();
        $response = [
            'message' => 'success',
            'status' => 200,
            'data' => $comic
        ];
        return response()->json($response, 200);
    }

    /**
     * Search for a genre
     *
     * @param  str  $genre
     * @return \Illuminate\Http\Response
     */
    public function getComicByGenre($genre)
    {

        $comic = Comic::where('genre', $genre)->get();
        $response = [
            'message' => 'success',
            'status' => 200,
            'data' => $comic
        ];
        return response()->json($response, 200);
    }
}
