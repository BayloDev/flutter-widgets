import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'splash_screen_page.dart';

class MyAppPageView extends StatefulWidget {
  const MyAppPageView({Key? key}) : super(key: key);

  @override
  State<MyAppPageView> createState() => _MyAppPageViewState();
}

class _MyAppPageViewState extends State<MyAppPageView> {
  var pageIndexNotifier = ValueNotifier<int>(0);

  int currentIndex = 0;
  Timer? timer;
  final PageController controller = PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 1.0,
  );
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (currentIndex < 3) {
          currentIndex++;
          controller.animateToPage(
            currentIndex,
            duration: const Duration(seconds: 1),
            curve: Curves.linear,
          );
        } else {
          timer.cancel();
        }
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Builder(
              builder: (ctx) {
                return PageView.builder(
                  itemCount: 4,
                  controller: controller,
                  itemBuilder: (ctx, index) {
                    return Container(
                      color: Colors.black87,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Flutter Logo ${index + 1}',
                            style: const TextStyle(
                                color: Colors.teal, fontSize: 30),
                          ),
                          const SizedBox(height: 40),
                          const FlutterLogo(size: 200),
                        ],
                      ),
                    );
                  },
                  onPageChanged: (value) async {
                    setState(() {
                      currentIndex = value;
                    });
                    if (currentIndex == 3) {
                      Future.delayed(
                        const Duration(seconds: 3),
                        () {
                          Navigator.pushReplacement(
                            ctx,
                            MaterialPageRoute(
                              builder: (ctx) => const SplashScreenPage(),
                            ),
                          );
                        },
                      );

                      SharedPreferences sharedPreferences =
                          await SharedPreferences.getInstance();

                      sharedPreferences.setBool('isOnBoardingLooked', true);
                    }
                  },
                );
              },
            ),
            Align(
              alignment: const Alignment(0, 0.7),
              child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: const DotBorder(
                      color: Colors.white,
                      padding: 1,
                      width: 2,
                      type: DotBorderType.solid,
                    ),
                    rotationAngle: 90,
                    width: 10,
                    height: 10,
                  ),
                  activeDotDecoration: DotDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(3),
                    dotBorder: const DotBorder(
                      color: Colors.white,
                      padding: 1,
                      width: 3,
                      type: DotBorderType.solid,
                    ),
                    verticalOffset: -10,
                    rotationAngle: 90,
                    width: 13,
                    height: 13,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.9),
              child: Builder(
                builder: (ctx) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(
                          ctx,
                          MaterialPageRoute(
                            builder: (ctx) => const SplashScreenPage(),
                          ),
                        );

                        SharedPreferences sharedPreferences =
                            await SharedPreferences.getInstance();

                        sharedPreferences.setBool('isOnBoardingLooked', true);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrange),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        width: double.infinity,
                        child: const Text(
                          'GET STARTED',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 4),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
