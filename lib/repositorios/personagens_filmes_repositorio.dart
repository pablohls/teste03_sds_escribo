import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FilmesPersonagens extends ChangeNotifier {
  List<dynamic> _filmes = [];
  List<dynamic> _personagens = [];

  List<dynamic> get filmes => this._filmes;

  set filmes(List<dynamic> value) => this._filmes = value;

  List<dynamic> get personagens => this._personagens;

  set personagens(List<dynamic> value) => this._personagens = value;

  FilmesPersonagensRepository() {
    //_setupFilmes();
    _setupPersonagens();
  }

  _setupFilmes() async {
    var url = Uri.parse('https://swapi.dev/api/films/');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List<dynamic> filmes = json['results'];
      for (var filmes in filmes) {
        _filmes.add(filmes['title']);
      }
    } else {
      //print(response.statusCode.toString());
    }
  }

  _setupPersonagens() async {
    var url = Uri.parse('https://swapi.dev/api/people/');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List<dynamic> personagens = json['results'];
      for (var personagens in personagens) {
        _personagens.add(personagens['name']);
      }
      //print(_personagens);
    } else {
      //print(response.statusCode.toString());
    }
  }
}
