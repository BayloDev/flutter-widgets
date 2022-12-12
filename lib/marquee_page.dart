import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueePage extends StatefulWidget {
  const MarqueePage({Key? key}) : super(key: key);

  @override
  State<MarqueePage> createState() => _MarqueePageState();
}

class _MarqueePageState extends State<MarqueePage> {
  bool onDone = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text('Marquee'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(color: Colors.black38),
            width: 310,
            height: onDone == false ? 30 : 0,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Marquee(
              text: onDone == false ? 'This is marquee\'s text' : ' ',
              accelerationCurve: Curves.linear,
              blankSpace: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              scrollAxis: Axis.horizontal,
              textDirection: TextDirection.ltr,
              numberOfRounds: 3,
              fadingEdgeEndFraction: 0.3,
              fadingEdgeStartFraction: 0.3,
              decelerationCurve: Curves.linear,
              pauseAfterRound: const Duration(seconds: 1),
              showFadingOnlyWhenScrolling: true,
              onDone: onDoneMethod,
              textScaleFactor: 1,
              velocity: 50,
              startAfter: const Duration(seconds: 4),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 4,
                wordSpacing: 4,
                leadingDistribution: TextLeadingDistribution.proportional,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onDoneMethod() {
    setState(
      () {
        onDone = true;
      },
    );
  }
}
