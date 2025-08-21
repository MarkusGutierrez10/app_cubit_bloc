import 'package:flutter/material.dart';
import '../../Cubit/cubit_Estado.dart';

Widget success(EstadoExitoso state) {
  final info = state.datos;

  return Center(
    child: Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.indigo[50],
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.account_balance_wallet,
                    color: Colors.indigo, size: 28),
                const SizedBox(width: 10),
                Text(
                  "${info.TipoCuenta ?? 'No disponible'}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.attach_money,
                    color: Colors.green, size: 28),
                const SizedBox(width: 10),
                Text(
                  "Saldo: \$${info.saldo?.toString() ?? '0'}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

