import 'package:flutter/material.dart';

class TextFormFieldPage extends StatefulWidget {
  const TextFormFieldPage({Key? key}) : super(key: key);

  @override
  State<TextFormFieldPage> createState() => _TextFormFieldPageState();
}

// ignore: constant_identifier_names
enum AuthMode { signIn, signUp }

class _TextFormFieldPageState extends State<TextFormFieldPage> {
  final GlobalKey<FormState> formKey = GlobalKey();
  Map<String, String> userData = {
    'email': '',
    'password': '',
  };
  AuthMode authMode = AuthMode.signIn;

  final passordController = TextEditingController();

  void changeAuthMode() {
    if (authMode == AuthMode.signIn) {
      setState(() {
        authMode = AuthMode.signUp;
      });
    } else {
      setState(() {
        authMode = AuthMode.signIn;
      });
    }
  }

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
          title: const Text('Text Form Field'),
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
                    Text(
                      authMode == AuthMode.signUp
                          ? 'SIGN UP TO OUR COMMUNITY'
                          : 'SIGN IN TO YOUR ACCOUNT',
                      style: const TextStyle(
                        fontSize: 25,
                        letterSpacing: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      maxLines: 1,
                      maxLength: 40,
                      autovalidateMode: AutovalidateMode.always,
                      cursorColor: Colors.deepOrange,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
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
                      validator: (value) {
                        if (value!.isEmpty || value.contains('@gmail.com')) {
                          return 'Invalid Email';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        userData['email'] = newValue!;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      controller: passordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          gapPadding: 4,
                        ),
                        prefixIcon: const Icon(Icons.password),
                        helperText: authMode == AuthMode.signUp
                            ? 'Password must be at least 8 characters long'
                            : null,
                      ),
                      validator: (value) {
                        if (value!.isEmpty || value.length <= 7) {
                          return 'Invalid Password';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        userData['password'] = newValue!;
                      },
                    ),
                    const SizedBox(height: 20),
                    if (authMode == AuthMode.signUp)
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            gapPadding: 4,
                          ),
                          prefixIcon: const Icon(Icons.password),
                        ),
                        validator: (value) {
                          if (value == passordController.text) {
                            return null;
                          } else {
                            return 'Password don\'t match ';
                          }
                        },
                      ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: saveData,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrange),
                      ),
                      child: Text(
                        authMode == AuthMode.signIn ? 'Sign In' : 'Sign Up',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: changeAuthMode,
                          child: Text(
                            authMode == AuthMode.signIn ? 'Sign Up' : 'Sign In',
                            style: const TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          'Instead',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                          ),
                        ),
                      ],
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
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      if (authMode == AuthMode.signIn) {
        // write the rest of singIn code here
      } else {
        // write the rest of signUp code here
      }
    } else {
      return;
    }
  }
}
