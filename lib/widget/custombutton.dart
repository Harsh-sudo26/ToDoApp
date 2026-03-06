import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constant/color/colors.dart';



class Custombutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  const Custombutton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
   
    return InkWell(
      onTap: onPressed,
      child: Container(
        
        height: 45,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent.withValues(alpha: 0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3), 
            )
          ],
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.bebasNeue(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
class custombutton2 extends StatelessWidget {
  const custombutton2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.width * 0.1, 
      color: Appcolor.lghtwhite,
    );
  }
}