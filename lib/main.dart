import 'package:finaad/mortgage.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FINAAD PTY LTD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: new Mortgage(),
          title: new Text(
            'FINAAD PTY LTD',
            style: TextStyle(
                color: Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          image: new Image.asset(
            'assets/finaad.jpeg',
            height: 500,
          ),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          loaderColor: Colors.red),
    );
  }
}
