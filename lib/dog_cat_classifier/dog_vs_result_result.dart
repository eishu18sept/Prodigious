// @dart=2.9

import 'package:flutter/material.dart';
import 'package:prodigious/dog_cat_classifier/widgets_dvc/fetched_image.dart';
import 'dart:io';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    Key key,
    @required File image,
    @required List output,
  })  : _image = image,
        _output = output,
        super(key: key);

  final File _image;
  final List _output;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Pet Classifier'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _image == null
              ? Container()
              : FetchedImage(
                  image: _image,
                ),
          _output == null
              ? Text("")
              : Text(
                  _output[0]["label"] == '1 Cat'
                      ? '  It\'s a Cat!  '
                      : '  It\'s a Dog!  ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFAE6FC),
                    backgroundColor: Color(0xff9700ff),
                  ),
                ),
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  _output[0]["label"] == '1 Cat'
                      ? 'images/cat_image.jpg'
                      : 'images/dog_image.jpg',
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'TRY ANOTHER IMAGE',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
