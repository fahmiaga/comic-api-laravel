<?php

namespace App\Http\Controllers;

use App\Models\Comic;
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
            'data' => $comic,
        ];
        return response()->json($response, Response::HTTP_OK);
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
            'synopsis' => 'required'
        ]);

        $slug = Str::of($request->title)->slug('-');

        $fileName = time() . '.' . $request->comic_image->extension();

        $request->file('comic_image')->storeAs('public', $fileName);
        try {
            $comic = Comic::create([
                'title' => $request->title,
                'synopsis' => $request->synopsis,
                'slug' => $slug,
                'comic_image' => $fileName
            ]);
            $response = [
                'message' => 'Comic added ',
                'data' => $comic
            ];
            return response()->json($response, Response::HTTP_CREATED);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'failed' . $e->errorInfo
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
            'data' => $comic
        ];
        return response()->json($response, Response::HTTP_OK);
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

        try {

            $fileName = time() . '.' . $request->comic_image->extension();
            $request->file('comic_image')->move('storage', $fileName);
            $slug = Str::of($request->title)->slug('-');
            $comic = Comic::find($id);

            $comicImg = $comic->comic_image;
            $filePath = public_path('storage/' . $comicImg);
            unlink($filePath);
            $comic->update([
                'title' => $request->title,
                'synopsis' => $request->synopsis,
                'slug' => $slug,
                'comic_image' => $fileName

            ]);
            $response = [
                'message' => 'Comic successfully updated ',
                'data' => $comic
            ];
            return response()->json($response, Response::HTTP_OK);
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
        Comic::destroy($id);
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
            'data' => $comic
        ];
        return response()->json($response, Response::HTTP_OK);
    }
}
