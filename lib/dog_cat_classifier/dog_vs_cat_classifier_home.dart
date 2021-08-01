// @dart=2.9

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:prodigious/dog_cat_classifier/dog_vs_result_result.dart';
import 'package:prodigious/dog_cat_classifier/widgets_dvc/home_container.dart';
import 'package:tflite/tflite.dart';

class DogCatClassifier extends StatefulWidget {
  static String id = "dog_vs_cat";
  @override
  _DogCatClassifierState createState() => _DogCatClassifierState();
}

class _DogCatClassifierState extends State<DogCatClassifier> {
  bool _isLoading;
  File _image;
  List _output;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    loadMLModel().then((value) {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('Dog vs Cat Classifier'),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: _isLoading ? HomeContainer() : HomeContainer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
        child: FloatingActionButton.extended(
          label: const Text('Select an Image'),
          icon: Icon(Icons.image),
          backgroundColor: Colors.green[700],
          tooltip: 'Add Image',
          elevation: 0,
          onPressed: () {
            chooseImage();
          },
        ),
      ),
    );
  }

  chooseImage() async {
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _isLoading = true;
      _image = image;
    });
    runModelOnImage(image);
  }

  runModelOnImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      imageMean: 127.5,
      imageStd: 127.5,
      threshold: 0.5,
    );
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultsScreen(image: _image, output: _output),
        ),
      );
      _output = output;
    });
  }

  loadMLModel() async {
    await Tflite.loadModel(
      model: 'assets/model_unquant.tflite',
      labels: 'assets/labels.txt',
    );
  }
}
