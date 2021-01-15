import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WeWorkWith extends StatefulWidget {
  @override
  _WeWorkWithState createState() => _WeWorkWithState();
}

class _WeWorkWithState extends State<WeWorkWith> {
  final List<String> imgList = [
    "assets/contact.gif",
    "assets/gar.gif",
    "assets/gar1.gif",
    "assets/gar2.gif",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.purple,
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  // options:
                  //     CarouselOptions(height:),
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: imgList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(color: Colors.white),
                            child: Image.asset(
                              i,
                              fit: BoxFit.contain,
                            ));
                      },
                    );
                  }).toList(),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                color: Colors.black,
                child: Center(
                  child: Image.asset("assets/finaad.jpeg"),
                ),
              )
            ],
          ),
        ));
  }
}
