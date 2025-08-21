
import 'package:flutter/material.dart';

class LoadingBloc extends StatelessWidget {
  const LoadingBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.blue, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircularProgressIndicator(
              color: Colors.blue,
              strokeWidth: 3,
            ),
            SizedBox(height: 15),
            Text(
              "Cargando datos...",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}