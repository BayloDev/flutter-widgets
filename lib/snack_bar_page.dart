import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  SnackBarPage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text('SnackBar '),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              var snackBar = SnackBar(
                content: const Text(
                  'SnackBar content.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                  textColor: Colors.blue,
                ),
                elevation: 5,
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                duration: const Duration(seconds: 4),
                behavior: SnackBarBehavior.floating,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
              );
              scaffoldKey.currentState!.showSnackBar(snackBar);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
            ),
            child: const Text(
              'Show SnackBar',
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
