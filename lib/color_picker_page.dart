import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerPage extends StatefulWidget {
  const ColorPickerPage({Key? key}) : super(key: key);

  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  Color currentColorColorPicker = Colors.grey.shade700;
  Color currentColorBlockPicker = Colors.grey.shade700;
  void changeColorColorPicker(Color value) {
    setState(() {
      currentColorColorPicker = value;
    });
  }

  void changeColorBlockPicker(Color value) {
    setState(() {
      currentColorBlockPicker = value;
    });
  }

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
          title: const Text('Color Picker '),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  var alert = AlertDialog(
                    title: Text(
                      'Select Color',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    content: SingleChildScrollView(
                      child: ColorPicker(
                        pickerColor: currentColorColorPicker,
                        onColorChanged: changeColorColorPicker,
                        colorPickerWidth: 300,
                        displayThumbColor: true,
                        enableAlpha: true,
                      ),
                    ),
                    actions: [
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
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
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
                  backgroundColor: MaterialStateProperty.all(
                    useWhiteForeground(currentColorColorPicker)
                        ? const Color(0xffffffff)
                        : const Color(0xff000000),
                  ),
                ),
                child: Text(
                  'Change color using ColorPicker',
                  style: TextStyle(
                    color: currentColorColorPicker,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  var alert = AlertDialog(
                    title: Text(
                      'Select Color',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SingleChildScrollView(
                          child: BlockPicker(
                            pickerColor: currentColorBlockPicker,
                            onColorChanged: changeColorBlockPicker,
                            availableColors: const [
                              Colors.red,
                              Colors.pink,
                              Colors.purple,
                              Colors.deepPurple,
                              Colors.indigo,
                              Colors.blue,
                              Colors.lightBlue,
                              Colors.cyan,
                              Colors.teal,
                              Colors.green,
                              Colors.lightGreen,
                              Colors.orange,
                              Colors.deepOrange,
                              Colors.brown,
                              Colors.grey,
                              Colors.blueGrey,
                            ],
                          ),
                        ),
                      ],
                    ),
                    actions: [
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
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
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
                  backgroundColor: MaterialStateProperty.all(
                    useWhiteForeground(currentColorBlockPicker)
                        ? const Color(0xffffffff)
                        : const Color(0xff000000),
                  ),
                ),
                child: Text(
                  'Change Color using BlockPicker',
                  style: TextStyle(
                    color: currentColorBlockPicker,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
