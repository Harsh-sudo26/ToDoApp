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
        return MaterialPageRoute(builder: (_) => const Signup());
      case home:
        return MaterialPageRoute(builder: (_) => const Homescreen());
      case login: 
        return MaterialPageRoute(builder: (_) => const Login());
      case splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      default:
        
        return MaterialPageRoute(builder: (_) => const Splash());
    }
  }
}