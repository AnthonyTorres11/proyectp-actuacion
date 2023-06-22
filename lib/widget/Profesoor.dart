import 'package:flutter/material.dart';

import '../model/Profesor.dart';

class Profesorr extends StatelessWidget {
  final Profesor profesor;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const Profesorr(
      {Key? key,
      required this.profesor,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(profesor.id);
      },
      onLongPress: () {
        onLongPress(profesor.id);
      },
      onTap: () {
        onTap(profesor);
      },
      child: Container(
        height: 50.0,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  height: 10,
                  decoration: BoxDecoration(
                      color: profesor.read
                          ? Colors.transparent
                          : Color.fromARGB(255, 228, 4, 4),
                      shape: BoxShape.circle),
                )),
            Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(profesor.profesion),
                    Text(profesor.experiencia)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
