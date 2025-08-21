import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marks/feature/presentation/Cubit/cubit_cubit.dart';
import 'feature/presentation/Bloc/bloc.dart';
import 'feature/presentation/Bloc/eventos.dart';
import 'feature/presentation/view/widget1.dart';
import 'feature/presentation/view/widget2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => Primercubit()), // Cubit
          BlocProvider(create: (_) => HomeBloc()),    // Bloc
        ],
        child: const Cuadro(),
      ),
    );
  }
}

class Cuadro extends StatelessWidget {
  const Cuadro({super.key});

  @override
  Widget build(BuildContext context) {
    final appcubit = context.read<Primercubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuenta Bancaria'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // 🔹 Cuadro 1 (Cubit)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey.shade700, // 🔹 Borde gris elegante
                  width: 2.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(height: 10),
                  Cuadro1(),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // 🔹 Cuadro 2 (Bloc)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey.shade700, // 🔹 Borde gris elegante
                  width: 2.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: const Cuadro2(),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                appcubit.peticion(); // Cubit
                context.read<HomeBloc>().add(HomeSearchPressed()); // Bloc
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                elevation: 5,
              ),
              child: const Text(
                "🚀 PETICIÓN",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
