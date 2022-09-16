import 'package:flutter/material.dart';
import 'package:minecraft/widgets/controller_button_widget.dart';

class ControllerWidget extends StatelessWidget {
  const ControllerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: 20,
      child: Row(
        children: [
          ControllerButtonWidget(
            path: 'assets/controller/left_button.png',
            onPressed: () {},
          ),
          ControllerButtonWidget(
            path: 'assets/controller/center.png',
            onPressed: () {},
          ),
          ControllerButtonWidget(
            path: 'assets/controller/right_button.png',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
