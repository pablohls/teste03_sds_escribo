import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste03_sds_escribo/widgets/app_bar_widget.dart';
import 'package:teste03_sds_escribo/repositorios/filmes_personagens_repositorio.dart';
import 'package:teste03_sds_escribo/widgets/list_cards_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FilmesPersonagens filmesPersonagens;
  @override
  Widget build(BuildContext context) {
    filmesPersonagens = context.watch<FilmesPersonagens>();
    return SafeArea(
        child: Scaffold(
            appBar: AppBarWidget(filmesPersonagens, context),
            body: SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Builder(builder: (context) {
                if (filmesPersonagens.listaSelecionada.isEmpty) {
                  return const Center(
                    child: Text(
                        'Lista Vazia, por favor, tente selecionar uma lista acima.'),
                  );
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: filmesPersonagens.listaSelecionada.length,
                    itemBuilder: (_, index) {
                      return ListCards(
                          title: filmesPersonagens.listaSelecionada[index]);
                    },
                  );
                }
              }),
            )));
  }
}
