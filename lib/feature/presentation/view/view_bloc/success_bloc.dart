import 'package:flutter/material.dart';
import '../../models/modelobloc.dart';

class SuccessBloc extends StatelessWidget {
  final UsuarioDato dato;

  const SuccessBloc({
    super.key,
    required this.dato,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: Colors.teal[50],
        margin: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.person, color: Colors.teal, size: 28),
                  const SizedBox(width: 10),
                  Text(
                    dato.nombre ?? 'No disponible',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(Icons.email, color: Colors.blueGrey, size: 24),
                  const SizedBox(width: 10),
                  Text(
                    dato.correo ?? 'No disponible',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(Icons.phone, color: Colors.green, size: 24),
                  const SizedBox(width: 10),
                  Text(
                    dato.telefono?.toString() ?? 'No disponible',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
