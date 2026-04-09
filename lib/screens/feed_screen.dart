import 'package:flutter/material.dart';
import 'make_healthy_juice_screen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  bool isFeeding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/backgrounds/kitchen_background.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/characters/hope_ferrer.png', height: 250),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Draggable<String>(
                      data: 'porridge',
                      feedback: Image.asset('assets/items_and_objects/bowl_of_porridge.png', width: 100),
                      childWhenDragging: Opacity(opacity: 0.5, child: Image.asset('assets/items_and_objects/bowl_of_porridge.png', width: 80)),
                      child: Image.asset('assets/items_and_objects/bowl_of_porridge.png', width: 80),
                    ),
                    const SizedBox(width: 30),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MakeHealthyJuiceScreen())),
                      child: Image.asset('assets/buttons/make_healthy_juice_button.png', width: 100),
                    ),
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
