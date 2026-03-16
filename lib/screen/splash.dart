import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constant/color/colors.dart';
import 'package:todoapp/constant/image/image_const.dart';
import 'package:todoapp/screen/homescreen.dart';
import 'package:todoapp/screen/signup.dart';
import 'package:todoapp/widget/custombutton.dart';
import 'package:todoapp/widget/smooth_page_route.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late TextStyle titleStyle;
  late TextStyle subtitleStyle;
  late TextStyle bodyStyle;
  late TextStyle signupStyle;

  @override
  void initState() {
    super.initState();

    // Precache splash image
    precacheImage(const AssetImage(splashbook), context);

    // Cache text styles
    titleStyle = GoogleFonts.oswald(
      shadows: const [
        Shadow(offset: Offset(3, 3), blurRadius: 6, color: Colors.greenAccent),
      ],
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w500,
    );

    subtitleStyle = GoogleFonts.poppins(
      shadows: const [
        Shadow(offset: Offset(3, 3), blurRadius: 6, color: Colors.greenAccent),
      ],
      color: const Color.fromARGB(255, 2, 255, 10),
      fontSize: 25,
      fontWeight: FontWeight.w500,
    );

    bodyStyle = GoogleFonts.poppins(
      color: Colors.white70,
      fontSize: 14,
      height: 1.5,
    );

    signupStyle = GoogleFonts.bebasNeue(
      fontSize: 22,
      color: Appcolor.textwhite,
      shadows: [
        Shadow(
          color: Colors.greenAccent.withOpacity(0.8),
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Image.asset(
                  splashbook,
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Text('Stay Organized', style: titleStyle),
              Text('Stay Focused', style: subtitleStyle),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Effortlessly manage your daily tasks, set priorities, and achieve your goals with our clean and simple interface.",
                  textAlign: TextAlign.center,
                  style: bodyStyle,
                ),
              ),
              const SizedBox(height: 25),
              Custombutton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  SmoothPageRoute(page: const Homescreen()),
                  (route) => false,
                ),
                color: const Color.fromARGB(255, 2, 250, 130),
                text: 'Get Started',
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  SmoothPageRoute(page: const Signup()),
                ),
                child: Text("Sign Up", style: signupStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}