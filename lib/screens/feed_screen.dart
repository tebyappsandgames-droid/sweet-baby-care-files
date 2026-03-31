import 'package:flutter/material.dart';
import 'make_healthy_juice_screen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  bool isHungry = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/kitchen_background.png'),
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
              child: Image.asset('assets/characters/hope_ferrer.png', height: 400),
            ),
            Positioned(
              bottom: 40, right: 20,
              child: GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MakeHealthyJuiceScreen())),
                child: Image.asset('assets/buttons/make_healthy_juice_button.png', width: 120),
              ),
            ),
            Positioned(
              bottom: 40, left: 100,
              child: Draggable(
                data: 'porridge',
                feedback: Image.asset('assets/items_and_objects/bowl_of_porridge.png', width: 100),
                childWhenDragging: Opacity(opacity: 0.5, child: Image.asset('assets/items_and_objects/bowl_of_porridge.png', width: 100)),
                child: Image.asset('assets/items_and_objects/bowl_of_porridge.png', width: 100),
              ),
            ),
            Center(
              child: DragTarget<String>(
                onAccept: (data) {
                  setState(() => isHungry = false);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Yum! Thank you!')));
                },
                builder: (context, candidateData, rejectedData) => Container(width: 200, height: 400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
