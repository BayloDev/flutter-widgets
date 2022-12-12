import 'package:flutter/material.dart';

class WidgetItem extends StatelessWidget {
  const WidgetItem({
    Key? key,
    required this.titleWidget,
    required this.difinitionWidget,
    required this.exemple,
  }) : super(key: key);
  final String titleWidget;
  final String difinitionWidget;
  final dynamic exemple;

  @override
  Widget build(BuildContext context) {
    double heightPhone = MediaQuery.of(context).size.height;
    double widthPhone = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
            elevation: MaterialStateProperty.all(16),
          ),
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange),
        ),
        colorScheme: ColorScheme.fromSwatch(),
      ),
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            gradient: LinearGradient(
              colors: [
                Colors.orange.withOpacity(0.9),
                Colors.orange.withOpacity(0.6),
                Colors.orange.withOpacity(0.6),
                Colors.orange.withOpacity(0.6),
                Colors.orange.withOpacity(0.6),
                Colors.orange.withOpacity(0.9),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: heightPhone * 0.04),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.black12,
                ),
                child: Text(
                  titleWidget,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              SizedBox(height: heightPhone * 0.02),
              Expanded(
                child: Container(
                  width: widthPhone * 0.57,
                  // padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(0.2),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 8,
                    ),
                    children: [
                      Text(
                        difinitionWidget,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey.shade700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: heightPhone * 0.02),
              ElevatedButton.icon(
                onPressed: exemple,
                label: const Text(
                  'Go To Exemple Page',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: const Icon(
                  Icons.arrow_forward,
                ),
              ),
              SizedBox(height: heightPhone * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
