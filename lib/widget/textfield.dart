import 'package:flutter/material.dart';
import 'package:todoapp/constant/color/colors.dart';

class Textfield extends StatelessWidget {
  const Textfield({
  super.key,
  required this.icon,
  required this.hinttext,
  required this.rowtext,
});

final Icon icon;
final String hinttext;
final String rowtext;

@override
Widget build(BuildContext context) {
  final formKey = GlobalKey<FormState>();
  return Form(
    key: formKey,
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 5),
              child: Text(
                rowtext,
                style: TextStyle(color: Appcolor.textwhite),
              ),
            ),
          ],
        ),
        Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hinttext,
              prefixIcon: icon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 15, 
                horizontal: 15, 
              ),
            ),
            style: TextStyle(color: Appcolor.textwhite),
          ),
        ),
        SizedBox(height: 20),
      ],
    ),
  );
}
}
