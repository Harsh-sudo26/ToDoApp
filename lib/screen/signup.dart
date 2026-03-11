import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constant/color/colors.dart';
import 'package:todoapp/constant/image/image_const.dart';
import 'package:todoapp/widget/custombutton.dart';
import 'package:todoapp/widget/textfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.height * 1,
              color: const Color.fromARGB(255, 23, 22, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(tick, height: 70),
                  ),
                  Text(
                    "Join Us today",
                    style: TextStyle(color: Appcolor.textwhite, fontSize: 28),
                  ),
                  Text(
                    '''Start managing your tasks efficiently and
                      boost your productivity.''',
                    style: TextStyle(color: Appcolor.lghtwhite),
                  ),
                  SizedBox(height: 25),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Textfield(
                          icon: Icon(Icons.person, color: Appcolor.textwhite),
                          hinttext: 'Name',
                          rowtext: 'Name',
                        ),
                        Textfield(
                          icon: Icon(Icons.email, color: Appcolor.textwhite),
                          hinttext: 'name@example.com',
                          rowtext: 'Email Address',
                        ),
                        Textfield(
                          icon: Icon(Icons.password, color: Appcolor.textwhite),
                          hinttext: 'Password',
                          rowtext: 'Password',
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Custombutton(
                    onPressed: () {},
                    color: Appcolor.buttoncolor,
                    text: 'Create Account',
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Custombutton2(
                          text: Text(
                            "Google",
                            style: GoogleFonts.outfit(
                              color: Appcolor.textwhite,
                            ),
                          ),
                          image: Image.asset(google, height: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Custombutton2(
                          text: Text(
                            "Google",
                            style: GoogleFonts.outfit(
                              color: Appcolor.textwhite,
                            ),
                          ),
                          image: Image.asset(ios, height: 10),
                        ),
                      ),
                    ],
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
