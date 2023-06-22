class Profesor {
  final int id;
  final String profesion;
  final String experiencia;
  bool read;

  Profesor({
    required this.id,
    required this.profesion,
    required this.experiencia,
    this.read = false,
  });
}
