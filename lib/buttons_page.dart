import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  bool isPopUpMenuButtonClicked = false;
  bool isElevatedButtonClicked = false;
  bool isFloatingButtonClicked = false;
  bool isOutlinedButtonClicked = false;
  bool isDropDownButtonClicked = false;
  bool isGestureDetecorClicked = false;
  bool isIconButtonClicked = false;
  bool isInkWellClicked = false;

  String? selectedValue = 'Algeria';

  Color color = Colors.white;
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
          title: const Text('Buttons '),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: DataTable(
            dataRowColor: MaterialStateProperty.all(Colors.black12),
            headingRowColor: MaterialStateProperty.all(Colors.black26),
            dividerThickness: 3,
            columnSpacing: 20,
            showBottomBorder: true,
            dataTextStyle: const TextStyle(color: Colors.red),
            decoration: BoxDecoration(color: Colors.orange.shade100),
            columns: const [
              DataColumn(
                label: Text(
                  'Button',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Exemple',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
              )
            ],
            rows: [
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      'ElevatedButton',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  DataCell(
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isElevatedButtonClicked = !isElevatedButtonClicked;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          isElevatedButtonClicked ? Colors.purple : Colors.grey,
                        ),
                        elevation: MaterialStateProperty.all(12),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                        side: MaterialStateProperty.all(
                          BorderSide.lerp(
                            const BorderSide(color: Colors.black12, width: 4),
                            const BorderSide(),
                            0,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Click',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      'FloatingActionButton',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  DataCell(
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          isFloatingButtonClicked = !isFloatingButtonClicked;
                        });
                      },
                      backgroundColor:
                          isFloatingButtonClicked ? Colors.purple : Colors.grey,
                      mini: true,
                      shape: ShapeBorder.lerp(
                        const RoundedRectangleBorder(side: BorderSide.none),
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        10,
                      ),
                      child: const Icon(Icons.add, size: 25),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      'IconButton',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  DataCell(
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isIconButtonClicked = !isIconButtonClicked;
                        });
                      },
                      color: Colors.purple,
                      iconSize: 30,
                      tooltip: 'Profile',
                      splashColor: Colors.yellow,
                      highlightColor: Colors.purple,
                      splashRadius: 30,
                      padding: const EdgeInsets.all(10),
                      icon: Icon(
                        Icons.person,
                        color:
                            isIconButtonClicked ? Colors.purple : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      'OutlinedButton',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  DataCell(
                    OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          isOutlinedButtonClicked ? Colors.purple : Colors.grey,
                        ),
                        elevation: MaterialStateProperty.all(12),
                        shadowColor: MaterialStateProperty.all(Colors.black),
                        side: MaterialStateProperty.all(
                          BorderSide.lerp(
                            const BorderSide(color: Colors.black12, width: 4),
                            const BorderSide(),
                            0,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          isOutlinedButtonClicked = !isOutlinedButtonClicked;
                        });
                      },
                      child: const Text(
                        'Click',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      'InkWell',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  DataCell(
                    InkWell(
                      onTap: () {
                        setState(() {
                          isInkWellClicked = !isInkWellClicked;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        width: 80,
                        height: 32,
                        color: isInkWellClicked ? Colors.purple : Colors.grey,
                        child: const Text(
                          'Click',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      'GestureDetector',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  DataCell(
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isGestureDetecorClicked = !isGestureDetecorClicked;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        width: 80,
                        height: 32,
                        color: isGestureDetecorClicked
                            ? Colors.purple
                            : Colors.grey,
                        child: const Text(
                          'Click',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      'DropDownButton',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  DataCell(
                    DropdownButton<String>(
                      style: const TextStyle(color: Colors.red),
                      value: selectedValue,
                      items: const [
                        DropdownMenuItem(
                          value: 'Algeria',
                          enabled: true,
                          child: Text(
                            'Algeria',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Palestine',
                          enabled: true,
                          child: Text(
                            'Palestine',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Egypt',
                          enabled: true,
                          child: Text(
                            'Egypt',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Tunisia',
                          enabled: true,
                          child: Text(
                            'Tunisia',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Morocco',
                          enabled: true,
                          child: Text(
                            'Morocco',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                      onChanged: (newVal) {
                        setState(
                          () {
                            selectedValue = newVal;
                            isDropDownButtonClicked = true;
                          },
                        );
                      },
                      borderRadius: BorderRadius.circular(20),
                      dropdownColor: Colors.orange,
                      iconSize: 30,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: isDropDownButtonClicked
                            ? Colors.purple
                            : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(
                cells: [
                  const DataCell(
                    Text(
                      'PopUpMenuButton',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  DataCell(
                    PopupMenuButton(
                      enabled: true,
                      iconSize: 10,
                      offset: const Offset(-30, 30),
                      position: PopupMenuPosition.over,
                      tooltip: 'Language',
                      color: Colors.white70,
                      icon: Icon(
                        Icons.language_sharp,
                        size: 30,
                        color: isPopUpMenuButtonClicked
                            ? Colors.purple
                            : Colors.black54,
                      ),
                      itemBuilder: (context) => [
                        const PopupMenuItem(child: Text('Arabic')),
                        const PopupMenuItem(child: Text('English')),
                        const PopupMenuItem(child: Text('French')),
                        const PopupMenuItem(child: Text('Spanish')),
                      ],
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
