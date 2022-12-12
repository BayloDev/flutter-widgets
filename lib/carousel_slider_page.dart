import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderPage extends StatelessWidget {
  const CarouselSliderPage({Key? key}) : super(key: key);

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
          title: const Text('Carousel Slider'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: CarouselSlider(
            items: [
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'FlutterLogo 1',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    FlutterLogo(size: 100),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'FlutterLogo 2',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    FlutterLogo(size: 100),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'FlutterLogo 3',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    FlutterLogo(size: 100),
                  ],
                ),
              ),
            ],
            options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              disableCenter: true,
              viewportFraction: 0.8,
              initialPage: 0,
              autoPlayCurve: Curves.linear,
              autoPlay: true,
              scrollDirection: Axis.horizontal,
              pauseAutoPlayOnTouch: true,
              pauseAutoPlayOnManualNavigate: false,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              autoPlayInterval: const Duration(seconds: 4),
              padEnds: true,
              reverse: true,
            ),
          ),
        ),
      ),
    );
  }
}
