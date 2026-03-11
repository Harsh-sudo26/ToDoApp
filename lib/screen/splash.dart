import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constant/color/colors.dart';
import 'package:todoapp/constant/image/image_const.dart';
import 'package:todoapp/routes/routes.dart';
import 'package:todoapp/widget/custombutton.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Image.asset(
                splashbook,
                height: 400,
                width: double.infinity,
              ),
            ),

            Center(
              child: Column(
                children: [
                  Text(
                    'Stay Organized ',
                    style: GoogleFonts.oswald(
                      shadows: [
                        Shadow(
                          offset: Offset(3, 3),
                          blurRadius: 6,
                          color: Colors.greenAccent,
                        ),
                      ],
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    "Stay Focused",
                    style: GoogleFonts.poppins(
                      shadows: [
                        Shadow(
                          offset: Offset(3, 3),
                          blurRadius: 6,
                          color: Colors.greenAccent,
                        ),
                      ],
                      color: Color.fromARGB(255, 2, 255, 10),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Effortlessly manage your daily tasks, set priorities, and achieve your goals with our clean and simple interface.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Custombutton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context,
                      Routes.home,
                      (route) => false,
                    ),
                    color: Color.fromARGB(255, 2, 250, 130),
                    text: 'Get Started',
                  ),

                  SizedBox(height: 20),

                  InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.Signup),
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 22,
                        color: Appcolor.textwhite,
                        shadows: [
                          Shadow(
                            color: Colors.greenAccent.withValues(alpha: .8),
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
