import 'package:flutter/material.dart';
import 'package:todoapp/screen/homescreen.dart';
import 'package:todoapp/screen/login.dart';
import 'package:todoapp/screen/signup.dart';
import 'package:todoapp/screen/splash.dart';

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home'; 

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const Splash());
        case home:
        return MaterialPageRoute(builder: (_) => const Homescreen());
      case login:
        return MaterialPageRoute(builder: (_) => const Login());
      case signup:
        return MaterialPageRoute(builder: (_) => const Signup());
      default:
        return MaterialPageRoute(builder: (_) => const Splash());
    }
  }
}