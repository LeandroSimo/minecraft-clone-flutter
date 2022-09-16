import 'package:flame/game.dart';
import 'package:minecraft/components/player_component.dart';
import 'package:minecraft/global/word_data.dart';

class MainGame extends FlameGame {
  final WordData wordData;

  MainGame({required this.wordData});

  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(PlayerComponent());
  }
}
