import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BedtimeScreen extends StatefulWidget {
  const BedtimeScreen({super.key});

  @override
  State<BedtimeScreen> createState() => _BedtimeScreenState();
}

class _BedtimeScreenState extends State<BedtimeScreen> {
  bool isDark = false;
  final AudioPlayer _lullaby = AudioPlayer();

  void _toggleSleep() {
    setState(() => isDark = !isDark);
    if (isDark) {
      _lullaby.play(AssetSource('radio_audio/tabtale_hush_little_baby.mp3'));
    } else {
      _lullaby.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _toggleSleep,
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          color: isDark ? Colors.indigo.shade900 : Colors.transparent,
          decoration: isDark ? null : const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgrounds/bedroom_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/characters/hope_ferrer.png', height: 400),
                if (!isDark) const Text('Tap to Sleep', style: TextStyle(fontSize: 24, color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
