<?php

namespace App\Http\Controllers;

use App\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $estudiantes = Student::all();
        return response()->json( $estudiantes );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $estudiante = new Student();

        $estudiante->nombre         = $request->nombre;
        $estudiante->apellido       = $request->apellido;
        $estudiante->clase          = $request->clase;
        $estudiante->edad           = $request->edad;
        $estudiante->descripcion    = $request->descripcion;

        $estudiante->save();

        return response()->json( ['estado'=>'Estudiante almacenado'] );
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $estudiante = Student::find($id);
        return response()->json( $estudiante );
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
        $estudiante = Student::find($id);

        $estudiante->nombre         = $request->nombre;
        $estudiante->apellido       = $request->apellido;
        $estudiante->clase          = $request->clase;
        $estudiante->edad           = $request->edad;
        $estudiante->descripcion    = $request->descripcion;

        $estudiante->save();

        return response()->json( ['estado'=>'Estudiante actualizado'] );
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $estudiante = Student::find($id);
        $estudiante->delete();

        return response()->json( ['estado'=>'Estudiante eliminado'] );
    }
}
