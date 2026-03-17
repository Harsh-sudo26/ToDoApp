import 'package:flutter/material.dart';
import 'package:todoapp/utils/dialog.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
         backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(onPressed: (){

          showMyDialog(context);
        },child: Icon(Icons.add),),
      )
    );
  }
}