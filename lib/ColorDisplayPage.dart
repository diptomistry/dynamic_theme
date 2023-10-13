import 'package:flutter/material.dart';

class ColorDisplayPage extends StatelessWidget {
  final Color color;
  final String colorName;

  ColorDisplayPage({
    required this.color,
    required this.colorName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Color'),
      ),
      body: Container(
        color: color, // Set the background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Color: $colorName',
                style: TextStyle(
                  color: Colors.white, // You might want to change text color for readability
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
