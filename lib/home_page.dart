import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import 'my_data.dart';
import 'widget_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgetsList = [];
  @override
  void initState() {
    for (var i = 0; i < nameList.length; i++) {
      widgetsList.add(
        WidgetWithCodeView(
          iconBackgroundColor: Colors.grey.shade400,
          iconForegroundColor: Colors.white,
          sourceFilePath: codeList[i],
          showLabelText: true,
          child: WidgetItem(
            titleWidget: nameList[i],
            difinitionWidget: definitionList[i],
            exemple: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return exempleList[i];
                  },
                ),
              );
            },
          ),
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightPhone = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.6),
          elevation: 1,
          shadowColor: Colors.orange,
          title: const Text(
            'Learn Flutter',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
              letterSpacing: 3,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            boxShadow: [BoxShadow(color: Colors.orange.shade200)],
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: CarouselSlider(
              items: widgetsList,
              options: CarouselOptions(
                height: heightPhone,
                enlargeCenterPage: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                disableCenter: true,
                viewportFraction: 0.9,
                initialPage: widgetsList.length - 1,
                enableInfiniteScroll: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
