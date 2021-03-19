import 'package:flutter/material.dart';
import 'package:flutter_single_scaffold/modules/scaffold_controller/app_scaffold.dart';
import 'package:flutter_single_scaffold/modules/shared/about.dart';
import 'package:flutter_single_scaffold/modules/shared/error.dart';
import 'package:flutter_single_scaffold/modules/shared/home.dart';

class CustomRouter {
  /*
   * function : onGenerateRoute
   * To be passed to the 'onGenerateRoute' option of the MaterialApp
   * The above option takes an argument of type:
   *   Route<dynamic> Function(RouteSettings) onGenerateRoute}
   */

  static Route<dynamic> onGenerateRoute(
      BuildContext context, RouteSettings settings) {
    /*
       * We are dealing with named routes here.
       * What we are particularly interested here are two properties
       *   - settings.name
       *   - settings.arguments
       */
    String routeName = settings.name;
    Object routeArguements = settings.arguments;
    return MaterialPageRoute(
      builder: (context) {
        /*
       * Note that we're getting the build context as an argument
       * but we are not using it. In a big application, it is suggested
       * that we do not discard the context, as it might have some
       * use case later.
       */
        Widget scaffoldBody = getWidget(routeName, routeArguements);
        return AppScaffold(
          scaffoldBody: scaffoldBody,
        );
      },
    );
  }

  // We do the widget selection heavy lifting here.
  static Widget getWidget(String routeName, Object routeArguments) {
    switch (routeName) {
      case Home.page:
        return Home();
        break;
      case About.page:
        return About();
        break;
      default:
        return ErrorPage();
    }
    // We will never reach here, but for semantic correctness, return an error
  }
}
