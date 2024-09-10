import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:plin_ball_sticker/instructions_b.dart';
import 'package:plin_ball_sticker/plin_main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InstructionsA extends StatelessWidget {
  const InstructionsA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(62, 61, 179, 1),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('plin_assets/imgs/planet_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Welcome\nto our app!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 30,
                    color: Color.fromRGBO(236, 246, 252, 1),
                    fontVariations: [
                      FontVariation('wght', 700),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Install and download stickers Welcome to the world where stickers meet your creativity!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 16,
                    color: Color.fromRGBO(236, 246, 252, 1),
                    fontVariations: [
                      FontVariation('wght', 400),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Get.offAll(() => InstructionsB());
                  },
                  child: Container(
                    height: 48,
                    width: Get.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(225, 40, 203, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 16,
                        color: Color.fromRGBO(236, 246, 252, 1),
                        fontVariations: [
                          FontVariation('wght', 600),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () async {
                    final plinPrefs = await SharedPreferences.getInstance();

                    await plinPrefs.setBool('plinInstr', false);
                    Get.offAll(() => PlinMainScreen());
                  },
                  child: Container(
                    height: 48,
                    width: Get.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(157, 137, 249, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 16,
                        color: Color.fromRGBO(157, 137, 249, 1),
                        fontVariations: [
                          FontVariation('wght', 600),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
