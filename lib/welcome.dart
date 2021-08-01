import 'package:flutter/material.dart';
import 'package:prodigious/dog_cat_classifier/dog_vs_cat_classifier_home.dart';
import 'package:prodigious/image_to_text/image_to_text_home.dart';
import 'package:prodigious/object_detector/object_detector_home.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green[700],
          title: Text(
            "P R O D I G I U S",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.green[100],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ImageToText.id);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      "Image to Text Converter",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    width: 170.0,
                                    height: 170.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/image_to_text_logo.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
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
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.green[100],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ObjectDetector.id);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      "Object Detector",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    width: 170.0,
                                    height: 170.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/object_detector_logo.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
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
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.green[100],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, DogCatClassifier.id);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      "Dog vs Cat Classifier",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    width: 170.0,
                                    height: 170.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/dog_cat_classifier_logo.jpg')),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
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
                ])));
  }
}
