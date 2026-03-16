class Contacto {
  String nombre;
  String telefono;

  Contacto(this.nombre, this.telefono);

  void mostrarContacto() {
    print("Nombre: $nombre - Teléfono: $telefono");
  }
}