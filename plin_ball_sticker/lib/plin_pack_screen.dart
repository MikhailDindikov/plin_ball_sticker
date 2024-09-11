import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preference_app_group/shared_preference_app_group.dart';

class PlinPackScreen extends StatefulWidget {
  final String blockName;
  final int plinTag;
  final List<String> plinStickers;
  const PlinPackScreen(
      {super.key,
      required this.plinStickers,
      required this.blockName,
      required this.plinTag});

  @override
  State<PlinPackScreen> createState() => _PlinPackScreenState();
}

class _PlinPackScreenState extends State<PlinPackScreen> {
  RxBool plinSelected = false.obs;
  RxBool plinLoad = true.obs;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await SharedPreferenceAppGroup.setAppGroup('group.plin.packs');
      final curSelGay =
          await SharedPreferenceAppGroup.getInt('plin_pack_tag') ?? 0;
      plinSelected.value = curSelGay == widget.plinTag;

      plinLoad.value = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(62, 61, 179, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
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
                        widget.blockName,
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 20,
                          color: Color.fromRGBO(236, 246, 252, 1),
                          fontVariations: [
                            FontVariation('wght', 600),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(225, 40, 203, 1),
                        ),
                        child: Text(
                          'FREE',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 12,
                            color: Color.fromRGBO(236, 246, 252, 1),
                            fontVariations: [
                              FontVariation('wght', 400),
                            ],
                          ),
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
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: List.generate(
                            widget.plinStickers.length,
                            (index) => Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(63, 62, 199, 1),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Image.asset(
                                'plin_assets/stickers/${widget.plinStickers[index]}.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () async {
                  if (!plinLoad.value) {
                    if (!plinSelected.value) {
                      plinLoad.value = true;
                      try {
                        await SharedPreferenceAppGroup.setAppGroup(
                            'group.plin.packs');
                        await SharedPreferenceAppGroup.setInt(
                            'plin_pack_tag', widget.plinTag);
                      } catch (e) {
                        log(e.toString());
                      }
                      plinSelected.value = true;
                      plinLoad.value = false;
                    }
                  }
                },
                child: Obx(
                  () => AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: double.infinity,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: plinSelected.value
                          ? Color.fromRGBO(157, 137, 249, 1)
                          : Color.fromRGBO(225, 40, 203, 1),
                    ),
                    child: Obx(
                      () => plinLoad.value
                          ? CupertinoActivityIndicator()
                          : plinSelected.value
                              ? Text(
                                  'Selected',
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 16,
                                    color: Color.fromRGBO(236, 246, 252, 1),
                                    fontVariations: [
                                      FontVariation('wght', 600),
                                    ],
                                  ),
                                )
                              : Text(
                                  'Select',
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
