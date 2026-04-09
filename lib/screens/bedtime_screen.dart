import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BedtimeScreen extends StatefulWidget {
  const BedtimeScreen({super.key});

  @override
  State<BedtimeScreen> createState() => _BedtimeScreenState();
}

class _BedtimeScreenState extends State<BedtimeScreen> {
  final AudioPlayer _lullabyPlayer = AudioPlayer();
  bool isLightsOff = false;

  @override
  void dispose() {
    _lullabyPlayer.dispose();
    super.dispose();
  }

  void _toggleLullaby() {
    _lullabyPlayer.play(AssetSource('radio_audio/tabtale_hush_little_baby.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/backgrounds/bedroom_background.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          if (isLightsOff) Container(color: Colors.black.withOpacity(0.6)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/characters/hope_ferrer.png', height: 250),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(icon: const Icon(Icons.nightlight_round, size: 50, color: Colors.yellow), onPressed: () => setState(() => isLightsOff = !isLightsOff)),
                    IconButton(icon: const Icon(Icons.radio, size: 50, color: Colors.blue), onPressed: _toggleLullaby),
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
