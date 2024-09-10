import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:plin_ball_sticker/plin_group_screen.dart';
import 'package:plin_ball_sticker/plin_pack_screen.dart';
import 'package:plin_ball_sticker/plin_system_screen.dart';

class PlinMainScreen extends StatelessWidget {
  const PlinMainScreen({super.key});

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
                  Column(
                    children: [
                      Image.asset(
                        'plin_assets/imgs/logo.png',
                        height: 58,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'ball stickers',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 16,
                          color: Color.fromRGBO(236, 246, 252, 1),
                          fontVariations: [
                            FontVariation('wght', 800),
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => GestureDetector(
                          onTap: Get.back,
                          child: Container(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            child: SafeArea(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    IntrinsicHeight(
                                      child: IntrinsicWidth(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 24),
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'plin_assets/imgs/menu_open.png',
                                                height: 36,
                                              ),
                                              SizedBox(
                                                height: 24,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(
                                                    () => PlinSystemScreen(
                                                      plinTitle:
                                                          'Privacy Policy',
                                                    ),
                                                  );
                                                },
                                                child: Image.asset(
                                                  'plin_assets/imgs/policy.png',
                                                  height: 36,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 24,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(
                                                    () => PlinSystemScreen(
                                                      plinTitle: 'Terms of Use',
                                                    ),
                                                  );
                                                },
                                                child: Image.asset(
                                                  'plin_assets/imgs/terms.png',
                                                  height: 36,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 24,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(
                                                    () => PlinSystemScreen(
                                                      plinTitle: 'Support',
                                                    ),
                                                  );
                                                },
                                                child: Image.asset(
                                                  'plin_assets/imgs/support.png',
                                                  height: 36,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      'plin_assets/imgs/menu.png',
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
                    child: Column(
                      children: [
                        PlinBlock(
                          blockName: 'Ball Stickers',
                          plinTags: [0, 1],
                          plinStickers: [
                            [
                              'ball_a_1',
                              'ball_a_2',
                              'ball_a_3',
                              'ball_a_4',
                              'ball_a_5',
                              'ball_a_6',
                              'ball_a_7',
                              'ball_a_8',
                              'ball_a_9',
                            ],
                            [
                              'ball_b_1',
                              'ball_b_2',
                              'ball_b_3',
                              'ball_b_4',
                              'ball_b_5',
                              'ball_b_6',
                              'ball_b_7',
                              'ball_b_8',
                              'ball_b_9',
                            ],
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        PlinBlock(
                          blockName: 'Balloons Stickers',
                          plinTags: [2, 3],
                          plinStickers: [
                            [
                              'balloon_a_1',
                              'balloon_a_2',
                              'balloon_a_3',
                              'balloon_a_4',
                              'balloon_a_5',
                              'balloon_a_6',
                              'balloon_a_7',
                              'balloon_a_8',
                              'balloon_a_9',
                            ],
                            [
                              'balloon_b_1',
                              'balloon_b_2',
                              'balloon_b_3',
                              'balloon_b_4',
                              'balloon_b_5',
                              'balloon_b_6',
                              'balloon_b_7',
                            ],
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        PlinBlock(
                          blockName: 'Squares Stickers',
                          plinTags: [4, 5],
                          plinStickers: [
                            [
                              'square_a_1',
                              'square_a_2',
                              'square_a_3',
                              'square_a_4',
                              'square_a_5',
                              'square_a_6',
                              'square_a_7',
                              'square_a_8',
                              'square_a_9',
                            ],
                            [
                              'square_b_1',
                              'square_b_2',
                              'square_b_3',
                              'square_b_4',
                              'square_b_5',
                              'square_b_6',
                              'square_b_7',
                              'square_b_8',
                              'square_b_9',
                            ],
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        PlinBlock(
                          blockName: 'Triangles Stickers',
                          plinTags: [6, 7],
                          plinStickers: [
                            [
                              'triangle_a_1',
                              'triangle_a_2',
                              'triangle_a_3',
                              'triangle_a_4',
                              'triangle_a_5',
                              'triangle_a_6',
                              'triangle_a_7',
                              'triangle_a_8',
                              'triangle_a_9',
                            ],
                            [
                              'triangle_b_1',
                              'triangle_b_2',
                              'triangle_b_3',
                              'triangle_b_4',
                              'triangle_b_5',
                              'triangle_b_6',
                            ],
                          ],
                        ),
                      ],
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

class PlinBlock extends StatefulWidget {
  final String blockName;
  final List<int> plinTags;
  final List<List<String>> plinStickers;
  const PlinBlock({
    super.key,
    required this.blockName,
    required this.plinStickers,
    required this.plinTags,
  });

  @override
  State<PlinBlock> createState() => _PlinBlockState();
}

class _PlinBlockState extends State<PlinBlock> {
  final _plinPageController = PageController();
  RxInt plinCurPage = 0.obs;

  @override
  void initState() {
    super.initState();
    _plinPageController.addListener(() {
      if (_plinPageController.page != null) {
        plinCurPage.value = (_plinPageController.page! + 0.45).toInt();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Get.to(() => PlinGroupScreen(
                  blockName: widget.blockName,
                  plinTags: widget.plinTags,
                  plinStickers: widget.plinStickers,
                ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.blockName,
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 16,
                  color: Color.fromRGBO(236, 246, 252, 1),
                  fontVariations: [
                    FontVariation('wght', 600),
                  ],
                ),
              ),
              const Text(
                'view all',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontFamily: 'Lexend',
                  fontSize: 12,
                  color: Color.fromRGBO(157, 137, 249, 1),
                  fontVariations: [
                    FontVariation('wght', 400),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 216,
          child: PageView.builder(
            controller: _plinPageController,
            itemCount: widget.plinStickers.length,
            itemBuilder: (context, index) => PlinBlockCard(
              blockName: widget.blockName,
              plinTag: widget.plinTags[index],
              plinStickers: widget.plinStickers[index],
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: plinCurPage.value == 0
                      ? Color.fromRGBO(236, 246, 252, 1)
                      : Color.fromRGBO(63, 62, 199, 1),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Obx(
              () => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: plinCurPage.value == 1
                      ? Color.fromRGBO(236, 246, 252, 1)
                      : Color.fromRGBO(63, 62, 199, 1),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PlinBlockCard extends StatelessWidget {
  final String blockName;
  final int plinTag;
  final List<String> plinStickers;
  const PlinBlockCard({
    super.key,
    required this.plinStickers,
    required this.blockName,
    required this.plinTag,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => PlinPackScreen(
              plinTag: plinTag,
              blockName: blockName,
              plinStickers: plinStickers,
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(63, 62, 199, 1),
          borderRadius: BorderRadius.circular(13),
        ),
        padding: EdgeInsets.all(16).copyWith(bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(225, 40, 203, 1),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'x${plinStickers.length}',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          color: Color.fromRGBO(236, 246, 252, 1),
                          fontVariations: [
                            FontVariation('wght', 400),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'plin_assets/imgs/box.png',
                        height: 16,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'plin_assets/stickers/${plinStickers[0]}.png',
                  height: 84,
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'plin_assets/stickers/${plinStickers[1]}.png',
                  height: 84,
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'plin_assets/stickers/${plinStickers[2]}.png',
                  height: 84,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color.fromRGBO(225, 40, 203, 1),
              ),
              child: Text(
                'Watch all',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 14,
                  color: Color.fromRGBO(236, 246, 252, 1),
                  fontVariations: [
                    FontVariation('wght', 400),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
