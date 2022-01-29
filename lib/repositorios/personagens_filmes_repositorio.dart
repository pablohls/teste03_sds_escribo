import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FilmesPersonagens extends ChangeNotifier {
  List<dynamic> filmes = [];
  List<dynamic> personagens = [];
  List<dynamic> favoritos = [];
  List<dynamic> listaSelecionada = [];

  filmesPersonagensRepository() async {
    print("Iniciando...");
    await _setupFilmes();
    await _setupPersonagens();
    print("Finalizado!");
  }

  _setupFilmes() async {
    var url = Uri.parse('https://swapi.dev/api/films/');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List<dynamic> lista = json['results'];
      for (var lista in lista) {
        filmes.add(lista['title']);
      }
    } else {}
    notifyListeners();
  }

  _setupPersonagens() async {
    var url = Uri.parse('https://swapi.dev/api/people/');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List<dynamic> lista = json['results'];
      for (var lista in lista) {
        personagens.add(lista['name']);
      }
    } else {}
    notifyListeners();
  }

  void selecionarLista(String categoria) {
    switch (categoria) {
      case "Filmes":
        listaSelecionada = filmes;
        notifyListeners();
        break;
      case "Personagens":
        listaSelecionada = personagens;
        notifyListeners();
        break;
      case "Favoritos":
        listaSelecionada = favoritos;
        notifyListeners();
        break;
      default:
        notifyListeners();
    }
  }
}
