import 'package:flutter/material.dart';

class DressUpScreen extends StatefulWidget {
  const DressUpScreen({super.key});

  @override
  State<DressUpScreen> createState() => _DressUpScreenState();
}

class _DressUpScreenState extends State<DressUpScreen> {
  String currentShirt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/backgrounds/dressing_room_background.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/characters/hope_ferrer.png', height: 300),
                    if (currentShirt.isNotEmpty) Positioned(top: 100, child: Image.asset(currentShirt, width: 120)),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(onTap: () => setState(() => currentShirt = 'assets/shirts/blue_shirt.png'), child: Image.asset('assets/shirts/blue_shirt.png', width: 80)),
                    const SizedBox(width: 20),
                    GestureDetector(onTap: () => setState(() => currentShirt = 'assets/shirts/green_shirt.png'), child: Image.asset('assets/shirts/green_shirt.png', width: 80)),
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
