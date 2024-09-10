import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plin_ball_sticker/instructions_a.dart';
import 'package:plin_ball_sticker/plin_main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlinSplashScreen extends StatefulWidget {
  const PlinSplashScreen({super.key});

  @override
  State<PlinSplashScreen> createState() => _PlinSplashScreenState();
}

class _PlinSplashScreenState extends State<PlinSplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final plinPrefs = await SharedPreferences.getInstance();

      final showInstructionsPlin = plinPrefs.getBool('plinInstr') ?? true;

      await Future.delayed(Duration(seconds: 2));
      if (showInstructionsPlin) {
        Get.offAll(() => InstructionsA());
      } else {
        Get.offAll(() => PlinMainScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('plin_assets/imgs/main_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'plin_assets/imgs/logo.png',
                height: 120,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'ball stickers',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 40,
                  color: Color.fromRGBO(236, 246, 252, 1),
                  fontVariations: [
                    FontVariation('wght', 800),
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
