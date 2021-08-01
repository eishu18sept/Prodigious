// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prodigious/image_to_text/widgets_itt/text_recognition_widget.dart';

class ImageToText extends StatefulWidget {
  static String id = "image_to_text";

  @override
  _ImageToTextState createState() => _ImageToTextState();
}

class _ImageToTextState extends State<ImageToText> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          title: Text("Image to Text Converter"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(height: 25),
              TextRecognitionWidget(),
              const SizedBox(height: 15),
            ],
          ),
        ),
      );
}
