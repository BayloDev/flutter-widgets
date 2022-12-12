import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushBarPage extends StatelessWidget {
  const FlushBarPage({Key? key}) : super(key: key);
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
          title: const Text('FlushBar'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Flushbar(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(4),
                title: 'Flushbar Title',
                messageText: const Text(
                  'FlushBar content',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                backgroundGradient: const LinearGradient(
                  colors: [
                    Colors.deepOrange,
                    Colors.orange,
                  ],
                ),
                borderColor: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                borderWidth: 4,
                duration: const Duration(seconds: 6),
                boxShadows: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(6, 8),
                  ),
                ],
                flushbarPosition: FlushbarPosition.BOTTOM,
                flushbarStyle: FlushbarStyle.FLOATING,
                forwardAnimationCurve: Curves.linear,
                icon: const Icon(Icons.done_outline, color: Colors.white),
                leftBarIndicatorColor: Colors.red,
                mainButton: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.undo, color: Colors.grey.shade600),
                  label: Text(
                    'Undo',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
              ).show(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
            ),
            child: const Text(
              'Click',
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
