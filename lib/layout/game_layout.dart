import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:minecraft/layout/controller_widget.dart';
import 'package:minecraft/main_game.dart';

class GameLayout extends StatelessWidget {
  const GameLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Aqui está o main game
        GameWidget(game: MainGame()),

        //Tudo que vem aqui será no hud
        const ControllerWidget(),
      ],
    );
  }
}
