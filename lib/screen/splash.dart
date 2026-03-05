import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homescreen.dart';
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
                'asset/images/book.png',
                height: 450,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,

              child: Center(
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
                        color: const Color.fromARGB(255, 2, 255, 10),
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 10,
                      ),
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
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Homescreen(),
                        ),
                      ),
                      color: const Color.fromARGB(255, 2, 250, 130),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Get Started",
                      style: GoogleFonts.bebasNeue(
                        color: const Color.fromARGB(255, 235, 232, 232),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
