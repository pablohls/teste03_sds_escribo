import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermojiCircleAvatar.dart';
import 'package:fluttermoji/fluttermojiCustomizer.dart';
import 'package:teste03_sds_escribo/widgets/app_bar_widget.dart';

class EdicaoAvatar extends StatefulWidget {
  EdicaoAvatar({Key? key}) : super(key: key);

  @override
  _EdicaoAvatarState createState() => _EdicaoAvatarState();
}

class _EdicaoAvatarState extends State<EdicaoAvatar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(null, context),
        body: Container(
          padding: const EdgeInsets.all(14),
          color: Colors.blueAccent,
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: FluttermojiCircleAvatar(
                  radius: 100,
                ),
              ),
              FluttermojiCustomizer(),
            ],
          ),
        ),
      ),
    );
  }
}
