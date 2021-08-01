// @dart=2.9

import 'package:flutter/material.dart';
import 'package:prodigious/dog_cat_classifier/widgets_dvc/animal_display.dart';
import 'package:shimmer/shimmer.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Center(
          //   child: Shimmer.fromColors(
          //     baseColor: Colors.black87,
          //     highlightColor: Colors.black38,
          //     child: Text(
          //       'Cat         Dog',
          //       style: TextStyle(
          //         fontSize: 20,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimalPhoto(title: 'cat_image.jpg'),
              SizedBox(
                child: Text(
                  'vs',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              AnimalPhoto(title: 'dog_image.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}
