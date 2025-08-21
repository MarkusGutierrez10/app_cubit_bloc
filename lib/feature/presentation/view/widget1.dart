import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit_Estado.dart';

import '../Cubit/cubit_cubit.dart';
import 'view_cubit/cargando.dart';
import 'view_cubit/failure.dart';
import 'view_cubit/initial.dart';
import 'view_cubit/success.dart';


class Cuadro1 extends StatelessWidget {
  const Cuadro1({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<Primercubit, EstadosApp>(
      builder: (context, state) {
        if (state is EstadoCargando) {
          return cargando();
        }else if (state is EstadoExitoso) {
          return success(state);
        }else if (state is EstadoFallo) {
          return Failure();
        }
        else{
          return Initial();
        }
      },
    );
  }
}
