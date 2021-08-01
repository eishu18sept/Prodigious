// @dart=2.9

import 'package:flutter/material.dart';
import 'package:prodigious/dog_cat_classifier/dog_vs_cat_classifier_home.dart';
import 'package:prodigious/image_to_text/image_to_text_home.dart';
import 'package:prodigious/object_detector/object_detector_home.dart';
import 'package:prodigious/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prodigious',
      theme: ThemeData.light().copyWith(
          textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      )),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ImageToText.id: (context) => ImageToText(),
        ObjectDetector.id: (context) => ObjectDetector(),
        DogCatClassifier.id: (context) => DogCatClassifier(),
      },
    );
  }
}
