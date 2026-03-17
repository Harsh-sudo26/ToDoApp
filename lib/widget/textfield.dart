import 'package:flutter/material.dart';
import 'package:todoapp/constant/color/colors.dart';

class Textfield extends StatelessWidget {
  const Textfield({
    super.key,
    required this.icon,
    required this.hinttext,
    required this.rowtext, required TextEditingController controller,
   
  });

  final Icon icon;
  final String hinttext;
  final String rowtext;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        style: TextStyle(color: Appcolor.lghtwhite),
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hinttext,
          labelText: rowtext,
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
    );
  }
}
