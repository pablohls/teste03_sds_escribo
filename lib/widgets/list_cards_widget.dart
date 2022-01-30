import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste03_sds_escribo/data_base_local/database_helper.dart';
import 'package:teste03_sds_escribo/repositorios/filmes_personagens_repositorio.dart';

class ListCards extends StatelessWidget {
  const ListCards({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var dados = Provider.of<FilmesPersonagens>(context);
    return Card(
      elevation: 5,
      color: cor(dados, title),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 50,
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Material(
            //elevation: 10,
            color: cor(dados, title),
            shape: const CircleBorder(),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              splashColor: Colors.blue,
              onTap: () {
                if (!dados.favoritos.contains(title)) {
                  dados.favoritos.add(title);
                  DatabaseHelper.instance.add(title);
                  dados.notifyListeners();
                } else {
                  (dados.favoritos.remove(title));
                  DatabaseHelper.instance.add(title);
                  dados.notifyListeners();
                }
              },
              child: Ink(child: Center(child: icone(dados, title))),
            ),
          )
        ],
      ),
    );
  }
}

Icon icone(FilmesPersonagens dados, String title) {
  if (dados.favoritos.contains(title)) {
    return const Icon(
      Icons.favorite,
      color: Colors.blue,
    );
  } else {
    return const Icon(
      Icons.favorite_border,
    );
  }
}

Color cor(FilmesPersonagens listas, String title) {
  if (listas.filmes.contains(title)) {
    return Colors.red;
  } else {
    return Colors.green;
  }
}
