import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermojiCustomizer.dart';
import 'package:provider/provider.dart';
import 'package:teste03_sds_escribo/home/widgets/appbar/app_bar_widget.dart';
import 'package:teste03_sds_escribo/repositorios/personagens_filmes_repositorio.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FilmesPersonagens filmesPersonagens;
  @override
  Widget build(BuildContext context) {
    filmesPersonagens = Provider.of<FilmesPersonagens>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(filmesPersonagens),
        body: SizedBox(
          width: double.maxFinite,
          //width: 100,
          height: double.maxFinite,
          //height: 500,
          child: Column(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: const [
                  Text('A Ameaça Fantasma'),
                  Text('Os Ultimos Jedi'),
                  Text('Rogue One Uma historia Star Wars'),
                ],
              ),
              //Expanded(child: FluttermojiCustomizer()),
            ],
          ),
        ),
      ),
    );
  }
}
