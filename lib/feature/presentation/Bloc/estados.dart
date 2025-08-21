import 'package:equatable/equatable.dart';
import '../models/modelobloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
  
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoadInProgress extends HomeState {}

class HomeLoadSuccess extends HomeState {
  final UsuarioDato dato;

  const HomeLoadSuccess(this.dato);

  @override
  List<Object?> get props => [dato];
}

class HomeLoadFailure extends HomeState {}
