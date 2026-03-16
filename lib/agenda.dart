import 'contacto.dart';

class Agenda {
  List<Contacto> contactos = [];

  // Agregar contacto
  void agregarContacto(String nombre, String telefono) {
    if (nombre.isEmpty || telefono.isEmpty) {
      print("Error: los datos no pueden estar vacíos.");
      return;
    }

    contactos.add(Contacto(nombre, telefono));
    print("Contacto agregado correctamente.");
  }

  // Mostrar contactos
  void mostrarContactos() {
    if (contactos.isEmpty) {
      print("La agenda está vacía.");
    } else {
      print("\nLista de contactos:");
      for (var contacto in contactos) {
        contacto.mostrarContacto();
      }
    }
  }

  // Buscar contacto
  void buscarContacto(String nombre) {
    bool encontrado = false;

    for (var contacto in contactos) {
      if (contacto.nombre.toLowerCase() == nombre.toLowerCase()) {
        contacto.mostrarContacto();
        encontrado = true;
      }
    }

    if (!encontrado) {
      print("Contacto no encontrado.");
    }
  }
}