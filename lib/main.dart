import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste03_sds_escribo/load_screen/load_screen.dart';
import 'package:teste03_sds_escribo/repositorios/filmes_personagens_repositorio.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => FilmesPersonagens(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      theme: ThemeData(
          //primarySwatch: Colors.transparent,
          ),
      home: LoadScreen(),
    );
  }
}
