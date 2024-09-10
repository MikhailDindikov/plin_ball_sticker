import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plin_ball_sticker/plin_splash_screen.dart';

void main() {
  runApp(const PlinMyApp());
}

class PlinMyApp extends StatelessWidget {
  const PlinMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PlinBallStickers',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const PlinSplashScreen(),
    );
  }
}

