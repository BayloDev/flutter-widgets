import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({Key? key}) : super(key: key);

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

Object? groupeVal = '';
Object? groupeValListTile = '';
bool? fcb = false;
bool? psg = false;
bool? rm = false;
bool? fcb1 = false;
bool? psg1 = false;
bool? rm1 = false;

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool? sp = false;
  bool? fr = false;
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
          title: const Text('Check Box '),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Center(
                child: Text(
                  '1/ Check Box',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Choose spanish teams',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: fcb,
                    onChanged: (newValue) {
                      setState(
                        () {
                          fcb = newValue;
                        },
                      );
                    },
                    activeColor: Colors.green,
                    splashRadius: 14,
                    autofocus: true,
                  ),
                  Text(
                    'FCB',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: psg,
                    onChanged: (newValue) {
                      setState(
                        () {
                          psg = newValue;
                        },
                      );
                    },
                    activeColor: Colors.green,
                    splashRadius: 14,
                    autofocus: true,
                  ),
                  Text(
                    'PSG',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: rm,
                    onChanged: (newValue) {
                      setState(
                        () {
                          rm = newValue;
                        },
                      );
                    },
                    activeColor: Colors.green,
                    splashRadius: 14,
                    autofocus: true,
                  ),
                  Text(
                    'RM',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var alertDialog = AlertDialog(
                        title: (fcb == false && rm == false && psg == false)
                            ? const Text(
                                'No Answer choosed',
                                style: TextStyle(color: Colors.orange),
                              )
                            : (fcb == true && rm == true && psg == false)
                                ? const Text(
                                    'Correct Answer',
                                    style: TextStyle(color: Colors.green),
                                  )
                                : const Text(
                                    'Wrong Answer',
                                    style: TextStyle(color: Colors.red),
                                  ),
                        content: (fcb == false && rm == false && psg == false)
                            ? const Text('Please choose the answer !')
                            : const Text(
                                'FC Bercelone and Real Madrid are the spanish team.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (context) => alertDialog,
                        barrierDismissible: false,
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                    child: const Text(
                      'Apply',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const Divider(thickness: 4, height: 30),
              Center(
                child: Text(
                  '2/ CheckBox List Tile',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Choose spanish team',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              CheckboxListTile(
                title: Text(
                  'Paris Saint-Germain',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  'PSG',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                ),
                value: psg1,
                onChanged: (newValue) {
                  setState(
                    () {
                      psg1 = newValue;
                    },
                  );
                },
                activeColor: Colors.green,
                autofocus: true,
                controlAffinity: ListTileControlAffinity.leading,
                tileColor: Colors.grey.shade300,
              ),
              CheckboxListTile(
                title: Text(
                  'FC Barcelone',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  'FCB',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                ),
                value: fcb1,
                onChanged: (newValue) {
                  setState(
                    () {
                      fcb1 = newValue;
                    },
                  );
                },
                activeColor: Colors.green,
                autofocus: true,
                controlAffinity: ListTileControlAffinity.leading,
                tileColor: Colors.grey.shade300,
              ),
              CheckboxListTile(
                title: Text(
                  'Real Madrid',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  ' RM',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                ),
                value: rm1,
                onChanged: (newValue) {
                  setState(
                    () {
                      rm1 = newValue;
                    },
                  );
                },
                activeColor: Colors.green,
                autofocus: true,
                controlAffinity: ListTileControlAffinity.leading,
                tileColor: Colors.grey.shade300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var alertDialog = AlertDialog(
                        title: (fcb1 == false && rm1 == false && psg1 == false)
                            ? const Text(
                                'No Answer choosed',
                                style: TextStyle(color: Colors.orange),
                              )
                            : (fcb1 == true && rm1 == true && psg1 == false)
                                ? const Text(
                                    'Correct Answer',
                                    style: TextStyle(color: Colors.green),
                                  )
                                : const Text(
                                    'Wrong Answer',
                                    style: TextStyle(color: Colors.red),
                                  ),
                        content: (fcb1 == false &&
                                rm1 == false &&
                                psg1 == false)
                            ? const Text('Please choose the answer !')
                            : const Text(
                                'FC Bercelone and Real Madrid are the spanish team.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (context) => alertDialog,
                        barrierDismissible: false,
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                    child: const Text(
                      'Apply',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
