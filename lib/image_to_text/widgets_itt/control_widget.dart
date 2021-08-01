import 'package:flutter/material.dart';

class ControlsWidget extends StatelessWidget {
  final VoidCallback onClickedPickImage;
  final VoidCallback onClickedScanText;
  final VoidCallback onClickedClear;

  const ControlsWidget({
    required this.onClickedPickImage,
    required this.onClickedScanText,
    required this.onClickedClear,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green[700],
            ),
            onPressed: onClickedPickImage,
            child: Text('Pick Image'),
          ),
          const SizedBox(width: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green[700],
            ),
            onPressed: onClickedScanText,
            child: Text('Scan For Text'),
          ),
          const SizedBox(width: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green[700],
            ),
            onPressed: onClickedClear,
            child: Text('Clear'),
          )
        ],
      );
}
