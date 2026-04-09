import 'package:flutter/material.dart';

class MakeHealthyJuiceScreen extends StatefulWidget {
  const MakeHealthyJuiceScreen({super.key});

  @override
  State<MakeHealthyJuiceScreen> createState() => _MakeHealthyJuiceScreenState();
}

class _MakeHealthyJuiceScreenState extends State<MakeHealthyJuiceScreen> {
  String juiceLayer = 'assets/items_and_objects/juice_empty.png';

  void _makeJuice(String type) {
    setState(() {
      juiceLayer = 'assets/juice_fruits_layers/juice_${type}_layer4.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/backgrounds/make_juice_background.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(juiceLayer, height: 200),
                const SizedBox(height: 40),
                Wrap(
                  spacing: 15,
                  children: [
                    _fruitBtn('orange'),
                    _fruitBtn('apple'),
                    _fruitBtn('banana'),
                    _fruitBtn('strawberry'),
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

  Widget _fruitBtn(String name) {
    return GestureDetector(
      onTap: () => _makeJuice(name),
      child: Image.asset('assets/fruits/$name.png', width: 60),
    );
  }
}
