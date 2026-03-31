import 'package:flutter/material.dart';

class PlaytimeScreen extends StatelessWidget {
  const PlaytimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/playroom_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(child: Image.asset('assets/characters/hope_ferrer.png', height: 400)),
            Positioned(
              bottom: 50, left: 30,
              child: Image.asset('assets/toys/ball.png', width: 80),
            ),
            Positioned(
              bottom: 50, right: 30,
              child: Image.asset('assets/toys/drum.png', width: 100),
            ),
          ],
        ),
      ),
    );
  }
}
