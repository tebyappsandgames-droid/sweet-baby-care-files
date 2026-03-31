import 'package:flutter/material.dart';

class MakeHealthyJuiceScreen extends StatefulWidget {
  const MakeHealthyJuiceScreen({super.key});

  @override
  State<MakeHealthyJuiceScreen> createState() => _MakeHealthyJuiceScreenState();
}

class _MakeHealthyJuiceScreenState extends State<MakeHealthyJuiceScreen> {
  List<String> ingredients = [];

  void _addFruit(String fruit) {
    if (ingredients.length < 3) {
      setState(() => ingredients.add(fruit));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/make_juice_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _fruitItem('assets/fruits/apple.png', 'Apple'),
                _fruitItem('assets/fruits/orange.png', 'Orange'),
                _fruitItem('assets/fruits/strawberry.png', 'Strawberry'),
              ],
            ),
            const Spacer(),
            Image.asset('assets/items_and_objects/blender.png', height: 250),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: ingredients.isNotEmpty ? () => Navigator.pop(context) : null,
              child: const Text('Blend!'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _fruitItem(String asset, String name) => GestureDetector(
    onTap: () => _addFruit(name),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(asset, width: 80),
    ),
  );
}
