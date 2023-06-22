
import 'Profesor.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _Profesores = [
    Profesor(
      id: 3441,
      profesion: 'LenguajeMatematicasBiologiaFisica',
      experiencia: '20 años',

    ),
    Profesor(
      id: 444,
      profesion: 'LenguajeMatematicasBiologiaFisica',
      experiencia: '20 años',

    ),
    Profesor(
      id: 9333,
      profesion: 'LenguajeMatematicasBiologiaFisica',
      experiencia: '30 años',

    ),
    Profesor(
      id: 666,
      read: true,
      profesion: 'MatematicasBiologiaFisica',
      experiencia: '30 años',

    ),
    Profesor(
      id: 34645,
      profesion: 'MatematicasBiologiaFisica',
      experiencia: '15 años30 años',

    ),
    Profesor(
      id: 64646,
      profesion: 'BiologiaFisica',
      experiencia: '15 años30 años',

    ),
    Profesor(
      id: 27464,
      profesion: 'BiologiaFisica',
      experiencia: '10 años15 años30 años',

    ),
    Profesor(
      id: 04648,
      profesion: 'Fisica',
      experiencia: '10 años15 años30 años',

    ),
    Profesor(
      id: 54649,
      profesion: 'Fisica',
      experiencia: '5 años10 años15 años30 años',

    ),
    Profesor(
      id: 10464,
      profesion: 'Anatomia5 años10 años15 años30 años',
      experiencia: '5 años10 años15 años30 años',

    ),
  ];

  List<Profesor> get_Profesor() {
    return _Profesores;
  }

  void markProfesorAsRead(int id) {
    final index = _Profesores.indexWhere((profesor) => profesor.id == id);
    _Profesores[index].read = true;
  }

  void deleteProfesor(int id) {
    _Profesores.removeWhere((profesor) => profesor.id == id);
  }
}
