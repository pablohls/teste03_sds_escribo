import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:teste03_sds_escribo/repositorios/personagens_filmes_repositorio.dart';

class BotoesOpcoes extends StatelessWidget {
  //late FilmesPersonagens filmesPersonagens;
  final String texto;
  //final Function() funcao;
  const BotoesOpcoes({
    Key? key,
    required this.texto,
    //required this.funcao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late FilmesPersonagens filmesPersonagens;
    filmesPersonagens = context.watch<FilmesPersonagens>();
    return SizedBox(
      width: 120,
      child: ElevatedButton(
        onPressed: () => {filmesPersonagens.selecionarLista(texto)},
        child: Text(
          texto,
        ),
      ),
    );
  }
}
