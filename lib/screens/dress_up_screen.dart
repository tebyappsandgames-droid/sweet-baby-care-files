import 'package:flutter/material.dart';

class DressUpScreen extends StatefulWidget {
  const DressUpScreen({super.key});

  @override
  State<DressUpScreen> createState() => _DressUpScreenState();
}

class _DressUpScreenState extends State<DressUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/dressing_room_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Expanded(child: Image.asset('assets/characters/hope_ferrer.png')),
            Container(
              height: 150,
              color: Colors.white.withOpacity(0.5),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Padding(padding: EdgeInsets.all(8), child: Icon(Icons.Checkroom, size: 80)),
                  // Map your assets/shirts and assets/hats here
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
