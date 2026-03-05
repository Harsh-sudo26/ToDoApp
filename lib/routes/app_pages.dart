import 'package:flutter/material.dart';
import 'package:todoapp/routes/routes.dart';
import 'package:todoapp/screen/homescreen.dart';
import 'package:todoapp/screen/splash.dart';

class AppPages {
  static Map<String, Widget Function(BuildContext)> routing = {
    Routes.splash: (context) => const Splash(),
    Routes.home: (context) => const Homescreen(),
  };
}