import 'package:flutter/material.dart';

class DoctorCheckupScreen extends StatelessWidget {
  const DoctorCheckupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/hospital_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(top: 40, left: 20, child: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context))),
            Center(child: Image.asset('assets/characters/hope_ferrer.png', height: 400)),
            Positioned(
              bottom: 30,
              left: 20, right: 20,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _medicalTool('assets/medical_tools/thermometer.png'),
                    _medicalTool('assets/medical_tools/bandage.png'),
                    _medicalTool('assets/medical_tools/medicine.png'),
                    _medicalTool('assets/medical_tools/toothbrush.png'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _medicalTool(String path) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Image.asset(path, width: 70),
  );
}
