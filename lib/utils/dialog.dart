import 'package:flutter/material.dart';


void showMyDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // User can tap outside to dismiss
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text('Add New Task',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),  
        content: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
        actions: [
          TextButton(onPressed: (){Navigator.of(context).pop();}, child: const Text("cancel")),
          ElevatedButton(onPressed: (){
            
          }, child: const Text("Ok",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),))
        ],
      );
    },
  );
}