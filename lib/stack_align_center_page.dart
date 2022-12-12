import 'package:flutter/material.dart';

class StackAlignCenterPage extends StatelessWidget {
  const StackAlignCenterPage({Key? key}) : super(key: key);

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
          title: const Text('Stack, Align & Center'),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  alignment: Alignment.topCenter,
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black26,
                  child: const Text(
                    'Container 1',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
                    alignment: Alignment.topCenter,
                    height: 300,
                    width: 200,
                    color: Colors.black38,
                    child: const Text(
                      'Container 2',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0, 0.2),
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    alignment: Alignment.topCenter,
                    width: 140,
                    height: 150,
                    color: Colors.black38,
                    child: Column(
                      children: const [
                        Text(
                          'Flutter Logo',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        FlutterLogo(size: 100),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
