import 'package:flutter/material.dart';
import 'package:animated_widgets/animated_widgets.dart';

class PlaytimeScreen extends StatelessWidget {
  const PlaytimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/backgrounds/playroom_background.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShakeAnimatedWidget(
                  enabled: true,
                  duration: const Duration(milliseconds: 1500),
                  shakeAngle: Rotation.deg(z: 10),
                  curve: Curves.linear,
                  child: Image.asset('assets/characters/hope_ferrer.png', height: 250),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/toys/ball.png', width: 70),
                    Image.asset('assets/toys/drum.png', width: 70),
                  ],
                )
              ],
            ),
          ),
          Positioned(top: 40, left: 20, child: IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: () => Navigator.pop(context))),
        ],
      ),
    );
  }
}
