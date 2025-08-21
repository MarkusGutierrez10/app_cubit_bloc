class UsuarioSaldo {
  final String TipoCuenta;
  final int saldo;

  UsuarioSaldo({
    required this.saldo,
    required this.TipoCuenta,
  });

  factory UsuarioSaldo.fromJson(Map<dynamic, dynamic> json) {
    return UsuarioSaldo(
      saldo: json["saldo"],
      TipoCuenta: json["tipoCuenta"]

    );
  }
}