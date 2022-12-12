import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({Key? key}) : super(key: key);

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
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text('Alert Dialog '),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              var alert = AlertDialog(
                title: Text(
                  'Alert Dialog Title',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                content: Container(
                  width: 200,
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Divider(thickness: 3),
                      const SizedBox(height: 8),
                      Text(
                        'Alert Dialog Content.',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 16,
                    ),
                    label: const Text(
                      'Done',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 16,
                    ),
                    label: const Text(
                      'Close',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                  ),
                ],
                backgroundColor: Colors.white,
                elevation: 5,
                actionsAlignment: MainAxisAlignment.spaceAround,
              );
              showDialog(
                context: context,
                builder: (context) {
                  return alert;
                },
                barrierDismissible: false,
                barrierColor: Colors.black54,
                useSafeArea: true,
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
            ),
            child: const Text(
              'Show Dialog',
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
