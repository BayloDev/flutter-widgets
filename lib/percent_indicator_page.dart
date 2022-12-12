import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentIndicatorPage extends StatelessWidget {
  const PercentIndicatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Circular Percent Indicator'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircularPercentIndicator(
            radius: 90.0,
            lineWidth: 12.0,
            animation: true,
            percent: 0.6,
            backgroundColor: Colors.grey.shade400,
            addAutomaticKeepAlive: false,
            animationDuration: 600,
            backgroundWidth: 20,
            linearGradient: const LinearGradient(
              colors: [
                Colors.orange,
                Colors.red,
              ],
            ),
            center: const Text(
              "60.0%",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            footer: const Text(
              "Progress",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.square,
            //progressColor: Colors.orange,
          ),
        ),
      ),
    );
  }
}
