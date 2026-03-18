import 'package:flutter/material.dart';
import 'package:todoapp/screen/homescreen.dart';
import 'package:todoapp/screen/signup.dart';
import 'package:todoapp/screen/splash.dart';
import 'package:todoapp/screen/login.dart';

class Routes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String signup = '/signup';
  static const String login = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signup:
        return MaterialPageRoute(builder: (context) => const Signup());
      case home:
        return MaterialPageRoute(builder: (context) => const Homescreen());
      case login:
        return MaterialPageRoute(builder: (context) => const Login());
      case splash:
        return MaterialPageRoute(builder: (context) => const Splash());
      default:
        return MaterialPageRoute(builder: (context) => const Splash());
    }
  }
}
