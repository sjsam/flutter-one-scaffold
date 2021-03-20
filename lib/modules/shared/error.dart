import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  static const String page = '/error';
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
              'Oops! Page not found',
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
