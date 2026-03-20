import 'package:flutter/material.dart';
import 'package:todoapp/screen/setting.dart';
import 'package:todoapp/widget/smooth_page_route.dart';

// ignore: camel_case_types
class drawerwidget extends StatelessWidget {
  const drawerwidget({super.key, required Color backgroundColor, });

  @override
  Widget build(BuildContext context) {
    return Drawer(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.greenAccent),
                child: Center(
                  child: Text(
                    "Menu",
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 1, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.settings, color: Color.fromARGB(255, 0, 0, 0)),
                title: const Text(
                  "Settings",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    SmoothPageRoute(page: SettingPage()),
                  );
                },
              ),
            ],
          ),
        );
  }
}