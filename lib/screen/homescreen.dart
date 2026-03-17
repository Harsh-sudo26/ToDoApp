import 'package:flutter/material.dart';
import 'package:todoapp/constant/color/colors.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: const Text(
              "To do app ",
              style: TextStyle(color: Appcolor.textwhite),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        splashColor: const Color.fromARGB(255, 5, 40, 110),
        child: const Icon(Icons.add),
      ),
    );
  }
}
