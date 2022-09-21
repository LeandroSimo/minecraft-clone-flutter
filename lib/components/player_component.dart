import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:minecraft/global/global_game_reference.dart';
import 'package:minecraft/global/player_data.dart';

class PlayerComponent extends SpriteAnimationComponent {
  final double speed = 5;
  bool isFacingRight = true;
  @override
  Future<void> onLoad() async {
    super.onLoad();
    SpriteSheet playerSpriteSheet = SpriteSheet(
      image: await Flame.images
          .load('sprite_sheets/player/player_walking_sprite_sheet.png'),
      srcSize: Vector2.all(60),
    );
    animation = playerSpriteSheet.createAnimation(row: 0, stepTime: 0.1);
    size = Vector2(100, 100);
    position = Vector2(100, 500);
  }

  @override
  void update(double dt) {
    super.update(dt);
    movementLogic();
  }

  void movementLogic() {
    // Moving Left
    if (GlobalGameReference
            .instance.gameReference.wordData.playerData.componentMotionState ==
        ComponentMotionState.walkingLeft) {
      position.x -= speed;
      if (isFacingRight) {
        flipHorizontallyAroundCenter();
        isFacingRight = false;
      }
    }

    // Moving Right
    if (GlobalGameReference
            .instance.gameReference.wordData.playerData.componentMotionState ==
        ComponentMotionState.walkingRight) {
      position.x += speed;
      if (!isFacingRight) {
        flipHorizontallyAroundCenter();
        isFacingRight = true;
      }
    }
  }
}
