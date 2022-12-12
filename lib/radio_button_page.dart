import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({Key? key}) : super(key: key);

  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

Object? groupeVal = '';
Object? groupeValListTile = '';

class _RadioButtonPageState extends State<RadioButtonPage> {
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
          title: const Text('Radio Button '),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Center(
                child: Text(
                  '1/ Radio',
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
                  'Choose The Correct Answer \n3 * 2 = ?',
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
                  Radio(
                    value: 3,
                    groupValue: groupeVal,
                    onChanged: (newValue) {
                      setState(
                        () {
                          groupeVal = newValue;
                        },
                      );
                    },
                    activeColor: Colors.green,
                    splashRadius: 14,
                    autofocus: true,
                  ),
                  Text(
                    '3',
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
                  Radio(
                    value: 6,
                    groupValue: groupeVal,
                    onChanged: (newValue) {
                      setState(() {
                        groupeVal = newValue;
                      });
                    },
                    activeColor: Colors.green,
                    splashRadius: 14,
                    autofocus: true,
                  ),
                  Text(
                    '6',
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
                  Radio(
                    value: 4,
                    groupValue: groupeVal,
                    onChanged: (newValue) {
                      setState(() {
                        groupeVal = newValue;
                      });
                    },
                    activeColor: Colors.green,
                    splashRadius: 14,
                    autofocus: true,
                  ),
                  Text(
                    '4',
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
                        title: groupeVal == ''
                            ? const Text(
                                'No Answer choosed',
                                style: TextStyle(color: Colors.orange),
                              )
                            : groupeVal == 6
                                ? const Text(
                                    'Correct Answer',
                                    style: TextStyle(color: Colors.green),
                                  )
                                : const Text(
                                    'Wrong Answer',
                                    style: TextStyle(color: Colors.red),
                                  ),
                        content: groupeVal == ''
                            ? const Text('Please choose the answer !')
                            : const Text('The answer is 6.'),
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
                  '2/ Radio List Tile',
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
                  'What\'s Your Favorite Club ?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              RadioListTile(
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
                value: 'PSG',
                groupValue: groupeValListTile,
                onChanged: (newValue) {
                  setState(
                    () {
                      groupeValListTile = newValue;
                    },
                  );
                },
                activeColor: Colors.green,
                autofocus: true,
                controlAffinity: ListTileControlAffinity.leading,
                tileColor: Colors.grey.shade300,
                secondary: Text(
                  'France',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16,
                  ),
                ),
              ),
              RadioListTile(
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
                value: 'FCB',
                groupValue: groupeValListTile,
                onChanged: (newValue) {
                  setState(
                    () {
                      groupeValListTile = newValue;
                    },
                  );
                },
                activeColor: Colors.green,
                autofocus: true,
                controlAffinity: ListTileControlAffinity.leading,
                tileColor: Colors.grey.shade300,
                secondary: Text(
                  'Spain',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16,
                  ),
                ),
              ),
              RadioListTile(
                title: Text(
                  'Manchester City',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  ' MC',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                ),
                value: 'MC',
                groupValue: groupeValListTile,
                onChanged: (newValue) {
                  setState(
                    () {
                      groupeValListTile = newValue;
                    },
                  );
                },
                activeColor: Colors.green,
                autofocus: true,
                controlAffinity: ListTileControlAffinity.leading,
                tileColor: Colors.grey.shade300,
                secondary: Text(
                  'England',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var alertDialog = AlertDialog(
                        title: groupeValListTile == ''
                            ? const Text(
                                'No Answer choosed',
                                style: TextStyle(color: Colors.orange),
                              )
                            : const Text(
                                'Prefered Club',
                                style: TextStyle(color: Colors.green),
                              ),
                        content: groupeValListTile == ''
                            ? const Text('Please choose the answer !')
                            : Text('Your favorite club is $groupeValListTile.'),
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
