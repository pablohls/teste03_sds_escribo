import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:teste03_sds_escribo/repositorios/filmes_personagens_repositorio.dart';

class BotoesOpcoes extends StatelessWidget {
  final String texto;
  const BotoesOpcoes({
    Key? key,
    required this.texto,
    //required this.funcao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late FilmesPersonagens filmesPersonagens;
    filmesPersonagens = context.watch<FilmesPersonagens>();
    //ThemeData(disabledColor: Colors.red);
    //ThemeData
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
        onPressed: filmesPersonagens.opcaoSelecionada == texto
            ? null
            : () => {filmesPersonagens.selecionarLista(texto)},
        child: Text(
          texto,
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent, //onSurface: Colors.red
        ),
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
        //     (Set<MaterialState> states) {
        //       if (states.contains(MaterialState.pressed)) {
        //         return Theme.of(context).colorScheme.primary.withOpacity(0.5);
        //       } else if (states.contains(MaterialState.disabled)) {
        //         return Colors.green;
        //       }
        //       return Colors.;
        //     },
        //   ),
        // ),
      ),
    );
  }
}
