import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  final GlobalKey<FormState> formKey = GlobalKey();
  Map<String, String> userContact = {
    'email': '',
    'job': '',
    'description': '',
  };

  final passordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          title: const Text('Text Field'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'Professional Imformation',
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      onChanged: (value) {
                        userContact['email'] = value;
                      },
                      maxLines: 1,
                      maxLength: 40,
                      cursorColor: Colors.deepOrange,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          gapPadding: 4,
                        ),
                        prefixIcon: const Icon(Icons.email_outlined),
                        suffixText: '@gmail.com',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      maxLines: 1,
                      maxLength: 40,
                      cursorColor: Colors.deepOrange,
                      decoration: InputDecoration(
                        labelText: 'Job Title',
                        prefixIcon: const Icon(Icons.work),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          gapPadding: 4,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      onChanged: (value) {
                        userContact['job'] = value;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: passordController,
                      maxLines: 4,
                      maxLength: 100,
                      onChanged: (value) {
                        userContact['description'] = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Description',
                        prefixIcon: const Icon(Icons.description),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          gapPadding: 4,
                        ),
                        hintMaxLines: 10,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: saveData,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrange),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void saveData() {
    formKey.currentState!.save();
  }
}
