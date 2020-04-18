import 'package:flutter/material.dart';

class NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  Future pushReplacement(Widget page) {
    return navigatorKey.currentState
        .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }

  Future push(Widget page) {
    return navigatorKey.currentState
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }

  Future removeAllAndPush(Widget page) {
    return navigatorKey.currentState.pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }), (Route<dynamic> route) => false);
  }

  pop() {
    return navigatorKey.currentState.pop();
  }

  Future<dynamic> pushNamed(String routeName, arguments) async {
    return await navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }
}