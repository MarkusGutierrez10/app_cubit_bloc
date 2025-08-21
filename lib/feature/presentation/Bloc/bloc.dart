import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

import '../models/modelobloc.dart';
import 'estados.dart';
import 'eventos.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeSearchPressed>((event, emit) async{
      emit(HomeLoadInProgress());
      final url = Uri.parse('https://raw.githubusercontent.com/MarkusGutierrez10/json/refs/heads/main/modelBloc.json',);
      final response = await http.get(url);
      if (response.statusCode == 200){
        Map objectMap = jsonDecode(response.body);
        UsuarioDato dato = UsuarioDato(objectMap);
        emit(HomeLoadSuccess(dato));
      }else{
        emit(HomeLoadFailure());
      }

    });
  }
}