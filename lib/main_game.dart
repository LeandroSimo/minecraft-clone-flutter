import 'package:flame/game.dart';
import 'package:get/get.dart';
import 'package:minecraft/components/player_component.dart';
import 'package:minecraft/global/global_game_reference.dart';
import 'package:minecraft/global/word_data.dart';

class MainGame extends FlameGame {
  final WordData wordData;

  MainGame({required this.wordData}) {
    globalGameReference.gameReference = this;
  }

  GlobalGameReference globalGameReference = Get.put(GlobalGameReference());

  PlayerComponent playerComponent = PlayerComponent();

  @override
  Future<void> onLoad() async {
    super.onLoad();

    add(playerComponent);
  }
}
