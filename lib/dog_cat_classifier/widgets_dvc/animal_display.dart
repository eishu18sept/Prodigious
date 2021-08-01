// @dart=2.9

import 'package:flutter/material.dart';

class AnimalPhoto extends StatelessWidget {
  final String title;
  AnimalPhoto({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'images/$title',
            ),
          ),
        ),
      ),
    );
  }
}
