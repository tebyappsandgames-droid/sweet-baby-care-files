import 'package:flutter/material.dart';

class BathtimeScreen extends StatelessWidget {
  const BathtimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/backgrounds/bathroom_background.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/characters/hope_ferrer.png', height: 250),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 20,
                  children: [
                    Image.asset('assets/items_and_objects/bar_of_soap.png', width: 60),
                    Image.asset('assets/items_and_objects/baby_shampoo.png', width: 60),
                    Image.asset('assets/items_and_objects/sponge.png', width: 60),
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
