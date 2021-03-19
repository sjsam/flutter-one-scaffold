import 'package:flutter/material.dart';

class About extends StatelessWidget {
  static const String page = '/about';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('About Page'),
        ),
      ],
    );
  }
}
