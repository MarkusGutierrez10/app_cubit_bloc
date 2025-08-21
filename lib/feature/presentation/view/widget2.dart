import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/bloc.dart';
import '../Bloc/estados.dart';
import '../models/modelobloc.dart';
import 'view_bloc/failure_bloc.dart';
import 'view_bloc/initial_bloc.dart';
import 'view_bloc/loading_bloc.dart';
import 'view_bloc/success_bloc.dart';

class Cuadro2 extends StatelessWidget {
  const Cuadro2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadSuccess) {
          UsuarioDato dato = state.dato;
          return SuccessBloc(dato: dato);
        } else if (state is HomeLoadInProgress) {
          return const LoadingBloc();
        } else if (state is HomeLoadFailure) {
          return const FailureBloc();
        }
        return const InitialBloc();
      },
    );
  }
}
