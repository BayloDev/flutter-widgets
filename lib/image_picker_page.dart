import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({Key? key}) : super(key: key);

  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  ImagePicker imagePicker = ImagePicker();
  File? pickedImage;
  uploadImage(ImageSource source) async {
    var image = await imagePicker.pickImage(source: source);
    if (image != null) {
      setState(() {
        pickedImage = File(image.path);
      });
    } else {}
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
          title: const Text('Image Picker '),
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
                      'Select Camera or Gallery',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            uploadImage(ImageSource.camera);
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.camera_alt,
                            size: 30,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            uploadImage(ImageSource.gallery);
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.source,
                              size: 30, color: Colors.grey.shade700),
                        )
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
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: pickedImage == null
                    ? Text(
                        'Upload Image',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      )
                    : Container(
                        width: 270,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: pickedImage == null
                            ? const Text('Not Choosen Image')
                            : Image.file(pickedImage!),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
