import 'package:flutter/material.dart';

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
        child: ElevatedButton(
            onPressed: funcao,
            child: Text(
              texto,
              //style: TextStyle(fontSize: 12),
            )));
  }
}
