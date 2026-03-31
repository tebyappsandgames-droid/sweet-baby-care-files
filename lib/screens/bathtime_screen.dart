import 'package:flutter/material.dart';
import 'package:animated_widgets/animated_widgets.dart';

class BathtimeScreen extends StatefulWidget {
  const BathtimeScreen({super.key});

  @override
  State<BathtimeScreen> createState() => _BathtimeScreenState();
}

class _BathtimeScreenState extends State<BathtimeScreen> {
  double cleanliness = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/bathroom_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 20, top: 40,
              child: IconButton(icon: const Icon(Icons.arrow_back, size: 40), onPressed: () => Navigator.pop(context)),
            ),
            Center(
              child: ShakeAnimatedWidget(
                enabled: cleanliness < 1.0,
                duration: const Duration(milliseconds: 1500),
                shakeAngle: Rotation.deg(z: 2),
                curve: Curves.linear,
                child: Image.asset('assets/characters/hope_ferrer.png', height: 400),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0, right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _toolIcon('assets/items_and_objects/bar_of_soap.png'),
                  _toolIcon('assets/items_and_objects/sponge.png'),
                  _toolIcon('assets/items_and_objects/rubber_duck.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _toolIcon(String asset) {
    return Draggable(
      feedback: Image.asset(asset, width: 80),
      child: Image.asset(asset, width: 80),
    );
  }
}
