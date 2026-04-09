import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/intro_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweet Baby Care',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Chalkboard',
        useMaterial3: true,
      ),
      home: const IntroScreen(),
    );
  }
}
