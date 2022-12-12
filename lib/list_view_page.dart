import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

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
          title: const Text('List View '),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.black26,
              width: 250,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text('1/ ListView', style: TextStyle(fontSize: 20)),
                    const SizedBox(height: 8),
                    Container(
                      color: Colors.white70,
                      height: 90,
                      width: 90,
                      child: ListView(
                        padding: const EdgeInsets.all(10),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: const [
                          Text('Item 1', style: TextStyle(fontSize: 18)),
                          SizedBox(height: 3),
                          Text('Item 2', style: TextStyle(fontSize: 18)),
                          SizedBox(height: 3),
                          Text('Item 3', style: TextStyle(fontSize: 18)),
                          SizedBox(height: 3),
                          Text('Item 4', style: TextStyle(fontSize: 18)),
                          SizedBox(height: 3),
                          Text('Item 5', style: TextStyle(fontSize: 18)),
                          SizedBox(height: 3),
                          Text('Item 6', style: TextStyle(fontSize: 18)),
                          SizedBox(height: 3),
                          Text('Item 7', style: TextStyle(fontSize: 18)),
                          SizedBox(height: 3),
                          Text('Item 8', style: TextStyle(fontSize: 18)),
                          SizedBox(height: 3),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 3,
                      height: 30,
                      color: Colors.white,
                    ),
                    const Text(
                      '2/ ListView.builder',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      color: Colors.white70,
                      height: 90,
                      width: 90,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(10),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 8,
                        itemBuilder: (context, index) => Text(
                          'Item ${index + 1}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 3,
                      height: 30,
                      color: Colors.white,
                    ),
                    const Text(
                      '3/ ListView.separated',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      color: Colors.white70,
                      height: 90,
                      width: 90,
                      child: ListView.separated(
                        padding: const EdgeInsets.all(10),
                        shrinkWrap: true,
                        itemCount: 8,
                        itemBuilder: (context, index) => Text(
                          'Item ${index + 1}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        separatorBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 4,
                            width: double.infinity,
                            color: Colors.black12,
                          );
                        },
                      ),
                    ),
                    const Divider(
                      thickness: 3,
                      height: 30,
                      color: Colors.white,
                    ),
                    const Text(
                      '4/ ListView.custom',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      color: Colors.white70,
                      height: 90,
                      width: 90,
                      child: ListView.custom(
                        padding: const EdgeInsets.all(10),
                        shrinkWrap: true,
                        itemExtent: 30,
                        childrenDelegate: SliverChildBuilderDelegate(
                          childCount: 8,
                          (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(top: 4),
                              padding: const EdgeInsets.all(3),
                              color: Colors.black12,
                              child: Text(
                                'Item ${index + 1}',
                                style: const TextStyle(fontSize: 18),
                              ),
                            );
                          },
                        ),
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
}
