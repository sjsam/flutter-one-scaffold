import 'package:flutter/material.dart';

class About extends StatelessWidget {
  static const String page = '/about';
  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 20);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'About Page',
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
