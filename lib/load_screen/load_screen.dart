import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:teste03_sds_escribo/home/home_page.dart';
import 'package:teste03_sds_escribo/repositorios/filmes_personagens_repositorio.dart';

class LoadScreen extends StatefulWidget {
  const LoadScreen({Key? key}) : super(key: key);

  @override
  State<LoadScreen> createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  late FilmesPersonagens filmesPersonagens;
  @override
  Widget build(BuildContext context) {
    filmesPersonagens = context.watch<FilmesPersonagens>();
    filmesPersonagens.filmesPersonagensRepository().then(
          (_) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          ),
        );
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.blueAccent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset('assets/images/logo_escribo.png')),
            ),
            SizedBox(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                strokeWidth: 8,
                color: Colors.green.shade400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
