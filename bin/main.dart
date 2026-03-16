import 'dart:io';
import '../lib/cuentabancaria.dart';
void main() {

  CuentaBancaria cuenta = CuentaBancaria("Usuario", 0);

  int opcion = 0;

  while (opcion != 4) {

    print("\n===== MENU =====");
    print("1. Depositar dinero");
    print("2. Retirar dinero");
    print("3. Mostrar saldo");
    print("4. Salir");
    stdout.write("Seleccione una opción: ");

    opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    switch (opcion) {

      case 1:
        stdout.write("Ingrese monto a depositar: ");
        double monto = double.tryParse(stdin.readLineSync() ?? "") ?? -1;
        cuenta.depositar(monto);
        break;

      case 2:
        stdout.write("Ingrese monto a retirar: ");
        double monto = double.tryParse(stdin.readLineSync() ?? "") ?? -1;
        cuenta.retirar(monto);
        break;

      case 3:
        cuenta.mostrarSaldo();
        break;

      case 4:
        print("Saliendo del sistema...");
        break;

      default:
        print("Opción inválida.");
    }
  }
}