import 'package:flutter/material.dart';

class DoctorCheckupScreen extends StatelessWidget {
  const DoctorCheckupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/backgrounds/hospital_background.png', fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/characters/hope_ferrer.png', height: 250),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/medical_tools/thermometer.png', width: 80),
                    const SizedBox(width: 20),
                    Image.asset('assets/medical_tools/medicine.png', width: 80),
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
