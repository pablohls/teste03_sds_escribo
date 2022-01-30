import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:teste03_sds_escribo/data_base_local/database_helper.dart';

class FilmesPersonagens extends ChangeNotifier {
  List<dynamic> filmes = [];
  List<dynamic> personagens = [];
  List<dynamic> favoritos = [];
  List<dynamic> listaSelecionada = [];
  String? opcaoSelecionada;

  //late Database db;

  filmesPersonagensRepository() async {
    print("Iniciando...");
    await _setupFilmes();
    await _setupPersonagens();
    //await _setupFavoritos();
    print("Finalizado!");
  }

  teste() async {
    await _setupFavoritos();
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
  }

  _setupFavoritos() async {
    // final dbHelper = DataBaseHelper.instace;

    // //print(dbHelper.database);
    // dbHelper

    // // Map<String, dynamic> row = {
    // //   DatabaseHelper.columnNome: 'Macoratti',
    // // };
    // // final id = await dbHelper.insert(row);
    // // print('linha inserida id: $id');
  }

  void selecionarLista(String categoria) {
    switch (categoria) {
      case "Filmes":
        listaSelecionada = filmes;
        opcaoSelecionada = categoria;
        notifyListeners();
        break;
      case "Personagens":
        listaSelecionada = personagens;
        opcaoSelecionada = categoria;
        notifyListeners();
        break;
      case "Favoritos":
        listaSelecionada = favoritos;
        opcaoSelecionada = categoria;
        notifyListeners();
        break;
      default:
        notifyListeners();
    }
  }
}
