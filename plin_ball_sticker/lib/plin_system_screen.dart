import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlinSystemScreen extends StatefulWidget {
  final String plinTitle;
  const PlinSystemScreen({super.key, required this.plinTitle});

  @override
  State<PlinSystemScreen> createState() => _PlinSystemScreenState();
}

class _PlinSystemScreenState extends State<PlinSystemScreen> {
  late WebViewController controllerW;

  @override
  void initState() {
    String llllWPlin = '';
    if (widget.plinTitle == 'Privacy Policy') {
      llllWPlin =
          'https://docs.google.com/document/d/1ToFluPXRnaKy_CQbVFyaPPWbYELO-QCFlqre5TTc2oU/edit?usp=sharing';
    } else if (widget.plinTitle == 'Terms of Use') {
      llllWPlin =
          'https://docs.google.com/document/d/1ABfyGGFon5cewITfrOfp-uUxU4vfwukhS56lVvc90Ek/edit?usp=sharing';
    } else {
      llllWPlin = 'https://form.jotform.com/242533077606456';
    }

    controllerW = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(llllWPlin));
    super.initState();
  }

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
                    widget.plinTitle,
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: WebViewWidget(
                    controller: controllerW,
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
