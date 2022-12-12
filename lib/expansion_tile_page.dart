import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class ExpansionTilePage extends StatefulWidget {
  const ExpansionTilePage({Key? key}) : super(key: key);

  @override
  State<ExpansionTilePage> createState() => _ExpansionTilePageState();
}

class _ExpansionTilePageState extends State<ExpansionTilePage> {
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
          title: const Text('Expansion Tile '),
          backgroundColor: Colors.orange,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExpansionTile(
                leading: const Text(
                  'Chap 1:',
                  style: TextStyle(fontSize: 20),
                ),
                title: const Text(
                  'Mobile development',
                  style: TextStyle(fontSize: 20),
                ),
                childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
                backgroundColor: Colors.grey.shade300,
                collapsedBackgroundColor: Colors.grey.shade300,
                collapsedIconColor: Colors.black54,
                collapsedTextColor: Colors.black54,
                tilePadding: const EdgeInsets.all(12),
                iconColor: Colors.blue,
                textColor: Colors.blue,
                initiallyExpanded: false,
                children: [
                  ListTile(
                    trailing: GestureDetector(
                      child: const Icon(Icons.download),
                      onTap: () {
                        toastFunction(context);
                      },
                    ),
                    title: const Text('Java'),
                  ),
                  ListTile(
                    trailing: GestureDetector(
                      child: const Icon(Icons.download),
                      onTap: () {
                        toastFunction(context);
                      },
                    ),
                    title: const Text('Objective-C'),
                  ),
                  ListTile(
                    trailing: GestureDetector(
                      child: const Icon(Icons.download),
                      onTap: () {
                        toastFunction(context);
                      },
                    ),
                    title: const Text('Swift'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExpansionTile(
                leading: const Text(
                  'Chap 2:',
                  style: TextStyle(fontSize: 20),
                ),
                title: const Text(
                  'Web development ',
                  style: TextStyle(fontSize: 20),
                ),
                childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
                backgroundColor: Colors.grey.shade300,
                collapsedBackgroundColor: Colors.grey.shade300,
                collapsedIconColor: Colors.black54,
                collapsedTextColor: Colors.black54,
                tilePadding: const EdgeInsets.all(12),
                iconColor: Colors.blue,
                textColor: Colors.blue,
                initiallyExpanded: false,
                children: [
                  ListTile(
                    trailing: GestureDetector(
                      child: const Icon(Icons.download),
                      onTap: () {
                        toastFunction(context);
                      },
                    ),
                    title: const Text('HTML'),
                  ),
                  ListTile(
                    trailing: GestureDetector(
                      child: const Icon(Icons.download),
                      onTap: () {
                        toastFunction(context);
                      },
                    ),
                    title: const Text('CSS'),
                  ),
                  ListTile(
                    trailing: GestureDetector(
                      child: const Icon(Icons.download),
                      onTap: () {
                        toastFunction(context);
                      },
                    ),
                    title: const Text('JavaScript'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ToastFuture toastFunction(BuildContext context) {
    return showToast(
      context: context,
      'Downloaded successfully',
      axis: Axis.horizontal,
      duration: const Duration(seconds: 5),
      backgroundColor: Colors.grey,
      borderRadius: BorderRadius.circular(8),
      textPadding: const EdgeInsets.all(8),
      textStyle: const TextStyle(color: Colors.white, fontSize: 18),
    );
  }
}
