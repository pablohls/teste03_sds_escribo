import 'package:flutter/material.dart';
import 'package:teste03_sds_escribo/home/widgets/appbar/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: SizedBox(
          width: double.maxFinite,
          //width: 100,
          height: double.maxFinite,
          //height: 500,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BotoesOpcoes(texto: "Filmes", funcao: () {}),
                  BotoesOpcoes(texto: "Personagens", funcao: () {}),
                  BotoesOpcoes(texto: "Favoritos", funcao: () {}),
                ],
              ),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: const [
                  Text('A Ameaça Fantasma'),
                  Text('Os Ultimos Jedi'),
                  Text('Rogue One Uma historia Star Wars'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BotoesOpcoes extends StatelessWidget {
  final String texto;
  final Function() funcao;
  const BotoesOpcoes({
    Key? key,
    required this.texto,
    required this.funcao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 120,
        child: ElevatedButton(onPressed: funcao, child: Text(texto)));
  }
}
