import 'package:equatable/equatable.dart';
import 'package:marks/feature/presentation/models/modeloCubit.dart';

class EstadosApp extends Equatable {
  @override
  List<Object?> get props => [];
}

class EstadoInicial extends EstadosApp {}

class EstadoCargando extends EstadosApp {}

class EstadoExitoso extends EstadosApp {
  final UsuarioSaldo datos;
  EstadoExitoso(this.datos);
}

class EstadoFallo extends EstadosApp {}


