import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/modeloCubit.dart';
import 'cubit_Estado.dart';
import 'package:bloc/bloc.dart';

class Primercubit extends Cubit<EstadosApp> {
  Primercubit() : super(EstadoInicial());
  Future<void> peticion() async {
    emit(EstadoCargando());
    final url = Uri.parse('https://raw.githubusercontent.com/MarkusGutierrez10/json/refs/heads/main/modelCubit.json');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final infojson = UsuarioSaldo.fromJson(json.decode(response.body));
        emit(EstadoExitoso(infojson));
      } else {
        emit(EstadoFallo());
      }
    } catch (e) {
      emit(EstadoFallo());
    }
  }
}


