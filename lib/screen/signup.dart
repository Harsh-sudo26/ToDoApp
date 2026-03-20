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
     final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RepaintBoundary(child: Image.asset(tick, height: 70)),
                const SizedBox(height: 20),
                Text(
                  "Join Us Today",
                  style: GoogleFonts.outfit(
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  "Start managing your tasks efficiently and boost your productivity.",
                  style: GoogleFonts.outfit(
                    color:Theme.of(context).textTheme.bodyLarge?.color,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                Column(
                  children: [
                    Textfield(
                      icon: Icon(Icons.person, color: Theme.of(context).textTheme.bodyLarge?.color),
                      hinttext: 'Name',
                      rowtext: 'Name',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                    Textfield(
                      icon: Icon(Icons.email, color: Theme.of(context).textTheme.bodyLarge?.color),
                      hinttext: 'name@example.com',
                      rowtext: 'Email Address',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: 10),
                    Textfield(
                      icon: Icon(Icons.password, color:Theme.of(context).textTheme.bodyLarge?.color),
                      hinttext: 'Password',
                      rowtext: 'Password',
                      controller: TextEditingController(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Custombutton(
                  onPressed: () => Navigator.pushNamed(context, Routes.home),
                  color: Appcolor.buttoncolor,
                  text: 'Create Account',
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Custombutton2(
                      text: Text(
                        "Google",
                        style: GoogleFonts.outfit(color: Theme.of(context).textTheme.bodyLarge?.color),
                      ),
                      image: RepaintBoundary(
                        child: Image.asset(google, height: 20),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Custombutton2(
                      text: Text(
                        "Apple",
                        style: GoogleFonts.outfit(color:Theme.of(context).textTheme.bodyLarge?.color),
                      ),
                      image: RepaintBoundary(
                        child: Image.asset(ios, height: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.outfit(color:Theme.of(context).textTheme.bodyLarge?.color),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.login);
                      },
                      child: Text(
                        "Log In",
                        style: GoogleFonts.outfit(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontWeight: FontWeight.bold,
                        ),
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
