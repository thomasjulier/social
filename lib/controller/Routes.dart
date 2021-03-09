import 'package:flutter/cupertino.dart';
import 'package:mom4me/screens/screens.dart';

class Routes {

  static final mainRoute = <String, WidgetBuilder>{
    '/': (context) =>SplashScreen(),
    '/home': (context) =>HomeScreen(),
  };
}