import 'package:flutter/material.dart';
import 'feed_screen.dart';
import 'bathtime_screen.dart';
import 'bedtime_screen.dart';
import 'doctor_checkup_screen.dart';
import 'dress_up_screen.dart';
import 'playtime_screen.dart';

class ActivitySelectorScreen extends StatelessWidget {
  const ActivitySelectorScreen({super.key});

  Widget _buildActivityButton(BuildContext context, String asset, Widget target) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => target)),
      child: Image.asset(asset, width: 100, height: 100),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/activity_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Pick an Activity!', style: TextStyle(fontSize: 32, color: Colors.white, shadows: [Shadow(blurRadius: 10)])),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(20),
                  children: [
                    _buildActivityButton(context, 'assets/toddler_care_buttons/feed_button.png', const FeedScreen()),
                    _buildActivityButton(context, 'assets/toddler_care_buttons/bathtime_button.png', const BathtimeScreen()),
                    _buildActivityButton(context, 'assets/toddler_care_buttons/bedtime_button.png', const BedtimeScreen()),
                    _buildActivityButton(context, 'assets/toddler_care_buttons/doctor_checkup_button.png', const DoctorCheckupScreen()),
                    _buildActivityButton(context, 'assets/toddler_care_buttons/dress_up_button.png', const DressUpScreen()),
                    _buildActivityButton(context, 'assets/toddler_care_buttons/playtime_button.png', const PlaytimeScreen()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
