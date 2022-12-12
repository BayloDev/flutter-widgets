import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class TaostPage extends StatelessWidget {
  const TaostPage({Key? key}) : super(key: key);

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
          title: const Text('Toast'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showToast(
                context: context,
                'T o a s t    c o n t e n t',
                position: const StyledToastPosition(
                  align: Alignment.bottomCenter,
                  offset: 100,
                ),
                animation: StyledToastAnimation.scaleRotate,
                axis: Axis.horizontal,
                duration: const Duration(seconds: 5),
                backgroundColor: Colors.deepOrange,
                borderRadius: BorderRadius.circular(8),
                textPadding: const EdgeInsets.all(8),
                textStyle: const TextStyle(color: Colors.white, fontSize: 18),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
            ),
            child: const Text(
              'Show Toast',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
