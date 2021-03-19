/*
 * Use Camel Case for class names
 */
import 'package:flutter/material.dart';
import 'package:flutter_single_scaffold/modules/shared/about.dart';
import 'package:flutter_single_scaffold/modules/shared/home.dart';

class AppScaffold extends StatelessWidget {
  final Widget scaffoldBody;
  const AppScaffold({this.scaffoldBody});
  @override
  Widget build(BuildContext context) {
    final drawerStyle = Theme.of(context).textTheme.bodyText1.copyWith(
          color: Colors.white,
          fontSize: 20.0,
        );
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          '',
        ),
      ),
      body: scaffoldBody,
      // This trailing comma makes auto-formatting nicer for build methods.
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        elevation: 20,
        child: Container(
          color: Colors.black87,
          padding: EdgeInsets.only(top: 50.0),
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                title: Text(
                  'Home',
                  style: drawerStyle,
                ),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(Home.page);
                },
              ),
              ListTile(
                title: Text(
                  'About',
                  style: drawerStyle,
                ),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(About.page);
                },
              ),
              ListTile(
                title: Text(
                  'Error',
                  style: drawerStyle,
                ),
                onTap: () {
                  // Testing the error page by pushing a non-existent path
                  Navigator.of(context).pushReplacementNamed('/non-existent');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
