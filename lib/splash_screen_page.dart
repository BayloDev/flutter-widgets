import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: EasySplashScreen(
          logo: Image.asset('images/flutter_logo.jpg'),
          loaderColor: Colors.deepOrange,
          logoWidth: MediaQuery.of(context).size.width / 2.5,
          navigator: const HomePage(),
          durationInSeconds: 5,
          showLoader: true,
          backgroundColor: Colors.orange.shade400,
          loadingTextPadding: const EdgeInsets.all(20),
          loadingText: const Text(
            'Loading...',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              letterSpacing: 5,
            ),
          ),
          title: const Text(
            'Please wait until the loading operation finished',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
