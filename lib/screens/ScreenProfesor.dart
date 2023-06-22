
import 'package:flutter/material.dart';
import 'package:practica_2b/model/Profesor.dart';
import 'package:practica_2b/screens/DetailProfesor.dart';
import 'package:practica_2b/widget/Profesoor.dart';

import '../model/backend.dart';

class ProfesorPantalla extends StatefulWidget {
  const ProfesorPantalla({super.key});

  @override
  State<ProfesorPantalla> createState() => _ProfesorPantallaState();
}

class _ProfesorPantallaState extends State<ProfesorPantalla> {

  var Profesores = Backend().get_Profesor();

  void markProfesorAsRead( int id ){
    Backend().markProfesorAsRead(id);
    setState(() {
      Profesores = Backend().get_Profesor();
    });
  }

  void deleteProfesor( int id ){
    Backend().deleteProfesor(id);
    setState(() {
      Profesores = Backend().get_Profesor()
;    });
  }
void showProfesorDetails( Profesor profesor){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return Profesordetalle(profesor: profesor);
  },));
  Backend().markProfesorAsRead(profesor.id);
  setState(() {
    Profesores= Backend().get_Profesor();
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista Profesor'),),
      body: ListView.separated(
        itemCount: Profesores.length,
        separatorBuilder: (BuildContext context, int index) =>const Divider(
          color: Colors.black,
          indent: 40.0,
          endIndent: 20.0,
        ) ,
        itemBuilder:( BuildContext context, int index) =>(
          Profesorr(

            profesor:  Profesores[index],
            onLongPress: markProfesorAsRead ,
            onTap: showProfesorDetails,
            onSwipe: deleteProfesor ,
          )),
      ),
    );
    
  }
}