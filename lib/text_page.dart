import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

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
          title: const Text('Text'),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  Text(
                    '1: Flutter is an open source framework by Google for building multi-platform applications from single codebase',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey, thickness: 2),
                  SizedBox(height: 20),
                  SelectableText(
                    '2: Flutter is an open source framework by Google for building multi-platform applications from single codebase',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 28,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                    maxLines: 3,
                    toolbarOptions: ToolbarOptions(
                      copy: true,
                      cut: false,
                      selectAll: true,
                      paste: false,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey, thickness: 2),
                  SizedBox(height: 20),
                  Text(
                    '3: Flutter is an open source framework by Google for building multi-platform applications from single codebase',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.teal,
                      wordSpacing: 5,
                      letterSpacing: 3,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey, thickness: 2),
                  SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '4: Flutter',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            backgroundColor: Colors.black26,
                          ),
                        ),
                        TextSpan(
                          text: ' is an open source framework by Google',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
