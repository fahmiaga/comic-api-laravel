<?php

namespace App\Http\Controllers;

use App\Models\Schedule;
use Illuminate\Http\Request;

class ScheduleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $schedule = Schedule::join('comics', 'comics.id', '=', 'schedules.id_comic')
            ->where('id_day', $id)
            ->get(['comics.*', 'schedules.id_schedule']);

        $response = [
            'message' => 'success',
            'status' => 200,
            'data' => $schedule
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
        $schedule = Schedule::join('comics', 'comics.id', '=', 'schedules.id_comic')
            ->where('id_day', $id)
            // ->where('id_comic', '=', $request->id_comic)
            ->select('id_comic')
            ->where('id_comic', $request->id_comic)
            ->first();

        // dd($schedule);

        // if ($schedule !== null) {
        //     dd('availabe');
        // } else {
        //     dd('not available');
        // }

        if ($schedule !== null) {
            $response = [
                'message' => 'Comic already exist',
                'status' => 406
            ];

            return response()->json($response, 406);
        }

        Schedule::create([
            'id_comic' => $request->id_comic,
            'id_day' => $id
        ]);

        $response = [
            'message' => 'Schedule successfully added',
            'status' => 201
        ];

        return response()->json($response, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Schedule::where('id_schedule', $id)->delete();

        $response = [
            'message' => 'Schedule successfully deleted',
            'status' => 200
        ];

        return response()->json($response, 200);
    }
}
