import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:teste03_sds_escribo/repositorios/personagens_filmes_repositorio.dart';
import 'botoes_opcoes_widget.dart';

class AppBarWidget extends PreferredSize {
  final FilmesPersonagens filmesPersonagens;

  AppBarWidget(this.filmesPersonagens, {Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(170),
          child: Stack(
            children: [
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(color: Colors.blueAccent),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                filmesPersonagens.filmesPersonagensRepository();
                              },
                              child: const Text("Site Oficial"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red)),
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: FluttermojiCircleAvatar(
                                radius: 100,
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.black,
                                  elevation: 30,
                                  shape: const CircleBorder()),
                            ),
                          )
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BotoesOpcoes(
                          texto: "Filmes",
                        ),
                        BotoesOpcoes(
                          texto: "Personagens",
                        ),
                        BotoesOpcoes(
                          texto: "Favoritos",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
}
