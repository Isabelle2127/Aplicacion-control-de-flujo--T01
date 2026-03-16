class CuentaBancaria {

  String titular;
  double saldo;

  // Constructor
  CuentaBancaria(this.titular, this.saldo);

  // Método para depositar dinero
  void depositar(double monto) {
    if (monto > 0) {
      saldo += monto;
      print("Depósito realizado correctamente.");
    } else {
      print("Error: el monto debe ser mayor que 0.");
    }
  }

  // Método para retirar dinero
  void retirar(double monto) {
    if (monto <= 0) {
      print("Error: el monto debe ser mayor que 0.");
    } 
    else if (monto > saldo) {
      print("Saldo insuficiente.");
    } 
    else {
      saldo -= monto;
      print("Retiro realizado correctamente.");
    }
  }

  // Método para mostrar saldo
  void mostrarSaldo() {
    print("Saldo actual: \$${saldo}");
  }
}
