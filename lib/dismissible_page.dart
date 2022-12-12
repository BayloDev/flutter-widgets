import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget {
  const DismissiblePage({Key? key}) : super(key: key);

  @override
  State<DismissiblePage> createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
  List<Color> wished = [];
  List<Color> removed = [];
  List<Color> colorList = [
    Colors.red,
    Colors.purple,
    Colors.indigo,
    Colors.blue,
    Colors.teal,
    Colors.lightGreen,
    Colors.yellow,
    Colors.deepOrange,
    Colors.blueGrey,
    Colors.black,
  ];
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
          title: const Text('Dismissible '),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Removed',
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: double.infinity,
                        child: ListView(
                          children: removed
                              .map(
                                (color) => ListTile(
                                  title: Center(
                                    child: Text(
                                      'Color',
                                      style: TextStyle(color: color),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'ColorList',
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: double.infinity,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: colorList.length,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          itemBuilder: (BuildContext context, int index) {
                            final item = colorList[index];
                            return Dismissible(
                              background: Container(
                                alignment: Alignment.center,
                                color: Colors.green,
                                child: const Icon(Icons.thumb_up_alt,
                                    color: Colors.white),
                              ),
                              secondaryBackground: Container(
                                alignment: Alignment.center,
                                color: Colors.red,
                                child: const Icon(Icons.delete,
                                    color: Colors.white),
                              ),
                              key: ValueKey<String>(item.toString()),
                              onDismissed: (DismissDirection direction) {
                                if (direction == DismissDirection.endToStart) {
                                  setState(() {
                                    removed.add(item);
                                    colorList.removeAt(index);
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: const Text(
                                          'Color added to removed list'),
                                      duration: const Duration(seconds: 2),
                                      action: SnackBarAction(
                                        label: 'Undo',
                                        onPressed: () {
                                          setState(() {
                                            colorList.insert(index, item);
                                            removed
                                                .removeAt(removed.length - 1);
                                          });
                                        },
                                      ),
                                    ),
                                  );
                                } else if (direction ==
                                    DismissDirection.startToEnd) {
                                  setState(() {
                                    wished.add(item);
                                    colorList.removeAt(index);
                                  });

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          const Text('Color added to WishList'),
                                      duration: const Duration(seconds: 2),
                                      action: SnackBarAction(
                                        label: 'Undo',
                                        onPressed: () {
                                          setState(() {
                                            wished.removeAt(wished.length - 1);
                                            colorList.insert(index, item);
                                          });
                                        },
                                      ),
                                    ),
                                  );
                                } else {}
                              },
                              child: ListTile(
                                title: Center(
                                  child: Text(
                                    'Color ',
                                    style: TextStyle(color: item),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Wished',
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                    ),
                    Column(
                      children: wished
                          .map(
                            (color) => ListTile(
                              title: Center(
                                child: Text(
                                  'Color ',
                                  style: TextStyle(color: color),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
