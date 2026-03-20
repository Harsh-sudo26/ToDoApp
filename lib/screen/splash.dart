import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  late TextStyle signupstyle;

  @override
  void initState() {
    super.initState();

    // Schedule image precache after first frame to avoid blocking
    WidgetsBinding.instance.addPostFrameCallback((_) {
      precacheImage(const AssetImage(splashbook), context);
    });

    // Initialize text styles
    titleStyle = GoogleFonts.oswald(
      shadows: const [
        Shadow(offset: Offset(2, 2), blurRadius: 4, color: Colors.greenAccent),
      ],
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w500,
    );

    subtitleStyle = GoogleFonts.poppins(
      shadows: const [
        Shadow(offset: Offset(2, 2), blurRadius: 4, color: Colors.greenAccent),
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

    signupstyle = GoogleFonts.oswald(
  fontSize: 18,
  color: Colors.white,
  shadows: [
    Shadow(
      color: Colors.greenAccent.withOpacity(0.4),
      blurRadius: 5,
      offset: Offset(0, 2),
    ),
  ],
);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double screenHeight = constraints.maxHeight;
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: screenHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Splash Image
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset(
                          splashbook,
                          height: screenHeight * 0.45,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Texts
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
                      const Spacer(),
                      // Get Started Button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Custombutton(
                          onPressed: () => Navigator.pushAndRemoveUntil(
                            context,
                            SmoothPageRoute(page: const Homescreen()),
                            (route) => false,
                          ),
                          color: const Color.fromARGB(255, 2, 250, 130),
                          text: 'Get Started',
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Sign Up Text
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          SmoothPageRoute(page: const Signup()),
                        ),
                        child: Text("Sign Up", style:signupstyle ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}