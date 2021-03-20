import 'dart:io';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String page = '/home';

  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 20);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(

        /*
         * Sheryl - Flutter Android Developement + connect to REST API 
         * Sajith - iOS, Testing 
         */
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (Platform.isAndroid)
              ? Container(
                  child: Text(
                    'Android Home Page',
                    style: textStyle,
                  ),
                )
              : Container(
                  child: Text(
                    'iOS Home Page',
                    style: textStyle,
                  ),
                ),
        ],
      ),
    );
  }
}
