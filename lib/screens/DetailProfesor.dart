import 'package:flutter/material.dart';

import '../model/Profesor.dart';

class Profesordetalle extends StatelessWidget {
  final Profesor profesor;
  const Profesordetalle({super.key, required Profesor this.profesor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalle Profesor')),
      body: Container(
        padding: EdgeInsetsDirectional.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(profesor.id.toString()),
            const SizedBox(
              height: 20,
            ),
            Text(profesor.profesion),
            Text(profesor.experiencia),
            Divider(
              color: Color.fromARGB(255, 113, 221, 25),
            ),
          ],
        ),
      ),
    );
  }
}
