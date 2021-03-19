import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  static const String page = '/error';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text('Oops! Page not found'),
        ),
      ],
    );
  }
}
