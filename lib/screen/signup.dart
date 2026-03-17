import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constant/color/colors.dart';
import 'package:todoapp/constant/image/image_const.dart';
import 'package:todoapp/widget/custombutton.dart';
import 'package:todoapp/widget/textfield.dart';
import 'package:todoapp/routes/routes.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo / Tick
                RepaintBoundary(
                  child: Image.asset(
                    tick,
                    height: 70,
                  ),
                ),
                const SizedBox(height: 20),

                // Title
                const Text(
                  "Join Us Today",
                  style: TextStyle(color: Appcolor.textwhite, fontSize: 28),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),

                // Subtitle
                const Text(
                  "Start managing your tasks efficiently and boost your productivity.",
                  style: TextStyle(color: Appcolor.lghtwhite),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),

                // Input Fields
                Column(
                  children: [
                    Textfield(
                      icon: Icon(Icons.person, color: Appcolor.textwhite),
                      hinttext: 'Name',
                      rowtext: 'Name',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                    Textfield(
                      icon: Icon(Icons.email, color: Appcolor.textwhite),
                      hinttext: 'name@example.com',
                      rowtext: 'Email Address',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                    Textfield(
                      icon: Icon(Icons.password, color: Appcolor.textwhite),
                      hinttext: 'Password',
                      rowtext: 'Password',
                      controller: TextEditingController(),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Create Account Button
                Custombutton(
                  onPressed: () =>
                      Navigator.pushNamed(context, Routes.home),
                  color: Appcolor.buttoncolor,
                  text: 'Create Account',
                ),

                const SizedBox(height: 25),

                // Social Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Custombutton2(
                      text: Text(
                        "Google",
                        style: GoogleFonts.outfit(color: Appcolor.textwhite),
                      ),
                      image: RepaintBoundary(
                          child: Image.asset(google, height: 20)),
                    ),
                    const SizedBox(width: 20),
                    Custombutton2(
                      text: Text(
                        "Apple",
                        style: GoogleFonts.outfit(color: Appcolor.textwhite),
                      ),
                      image: RepaintBoundary(
                          child: Image.asset(ios, height: 20)),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(color: Appcolor.textwhite),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.login);
                      },
                      child: const Text(
                        "Log In",
                        style: TextStyle(color: Appcolor.textwhite),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}