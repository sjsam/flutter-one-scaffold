import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String page = '/home';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('Home Page'),
        ),
      ],
    );
  }
}
