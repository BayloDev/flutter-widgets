import 'package:flutter/material.dart';

class ChangeThemePage extends StatefulWidget {
  const ChangeThemePage({Key? key}) : super(key: key);

  @override
  State<ChangeThemePage> createState() => _ChangeThemePageState();
}

class _ChangeThemePageState extends State<ChangeThemePage> {
  bool isDark = false;

  ThemeMode changeThemeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(size: 20, color: Colors.white),
          color: Colors.orange,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: Colors.orange,
          brightness: Brightness.light,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.orange,
            backgroundColor: Colors.deepOrange,
            side: const BorderSide(width: 2, color: Colors.red),
            shadowColor: Colors.orange.shade500,
            textStyle: const TextStyle(
              fontSize: 20,
              inherit: false,
              color: Colors.white,
            ),
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(size: 20, color: Colors.orange),
          color: Colors.black12,
          titleTextStyle: TextStyle(
            color: Colors.orange,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: const ColorScheme.dark(
          primary: Colors.orange,
          brightness: Brightness.dark,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.orange,
            backgroundColor: Colors.black54,
            elevation: 2,
            side: const BorderSide(width: 1, color: Colors.orange),
            shadowColor: Colors.orange.shade500,
            textStyle: const TextStyle(
              fontSize: 20,
              inherit: false,
              color: Colors.white,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      themeMode: changeThemeMode,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(isDark ? 'Dark Theme' : 'Light Theme'),
        ),
        body: Center(
          child: TextButton.icon(
            onPressed: () {
              setState(() {
                isDark = !isDark;
                changeThemeMode = isDark ? ThemeMode.dark : ThemeMode.light;
              });
            },
            icon: isDark
                ? const Icon(Icons.light_mode)
                : const Icon(Icons.dark_mode),
            label: isDark
                ? const Text('Change Theme To Light')
                : const Text('Change Theme To Dark'),
          ),
        ),
      ),
    );
  }
}
