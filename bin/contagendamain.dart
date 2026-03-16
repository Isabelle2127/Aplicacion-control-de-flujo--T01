import 'dart:io';
import 'package:aplicacion_controlflujo/agenda.dart';
import 'package:aplicacion_controlflujo/contacto.dart';

void main() {
  Agenda agenda = Agenda();
  int opcion = 0;

  while (opcion != 4) {
    print("\n===== MENU AGENDA =====");
    print("1. Agregar contacto");
    print("2. Mostrar contactos");
    print("3. Buscar contacto");
    print("4. Salir");
    stdout.write("Seleccione una opción: ");

    opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    switch (opcion) {
      case 1:
        stdout.write("Ingrese nombre: ");
        String nombre = stdin.readLineSync() ?? "";

        stdout.write("Ingrese teléfono: ");
        String telefono = stdin.readLineSync() ?? "";

        agenda.agregarContacto(nombre, telefono);
        break;

      case 2:
        agenda.mostrarContactos();
        break;

      case 3:
        stdout.write("Ingrese nombre a buscar: ");
        String nombre = stdin.readLineSync() ?? "";

        agenda.buscarContacto(nombre);
        break;

      case 4:
        print("Saliendo del programa...");
        break;

      default:
        print("Opción inválida.");
    }
  }
}