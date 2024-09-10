import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:plin_ball_sticker/plin_main_screen.dart';

class PlinGroupScreen extends StatelessWidget {
  final String blockName;
  final List<int> plinTags;
  final List<List<String>> plinStickers;
  const PlinGroupScreen(
      {super.key, required this.blockName, required this.plinStickers, required this.plinTags});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(62, 61, 179, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: Get.back,
                    child: Image.asset(
                      'plin_assets/imgs/back.png',
                      height: 36,
                    ),
                  ),
                  Text(
                    blockName,
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 20,
                      color: Color.fromRGBO(236, 246, 252, 1),
                      fontVariations: [
                        FontVariation('wght', 600),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0,
                    child: Image.asset(
                      'plin_assets/imgs/back.png',
                      height: 36,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: Get.width,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(157, 137, 249, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => PlinBlockCard(
                        blockName: blockName,
                        plinTag: plinTags[index],
                        plinStickers: plinStickers[index],
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 16,
                      ),
                      itemCount: plinStickers.length,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
