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
      body: SafeArea(
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
                    padding: const EdgeInsets.all(4.0),
                    child: RepaintBoundary(child: Image.asset(tick, height: 70)),
                  ),
                 const Text(
                    "Join Us today",
                    style: TextStyle(color: Appcolor.textwhite, fontSize: 28),
                  ),
                const  Text(
                    '''Start managing your tasks efficiently and
                      boost your productivity.''',
                    style: TextStyle(color: Appcolor.lghtwhite),
                  ),
                const  SizedBox(height: 25),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Textfield(
                          icon: Icon(Icons.person, color: Appcolor.textwhite),
                          hinttext: 'Name',
                          rowtext: 'Name',
                           controller: TextEditingController(),
                        ),
                        Textfield(
                          icon: Icon(Icons.email, color: Appcolor.textwhite),
                          hinttext: 'name@example.com',
                          rowtext: 'Email Address',
                           controller: TextEditingController(),
                        ),
                        Textfield(
                          icon: Icon(Icons.password, color: Appcolor.textwhite),
                          hinttext: 'Password',
                          rowtext: 'Password',
                          controller: TextEditingController(),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  Custombutton(
                    onPressed: () =>

                      Navigator.pushNamed(context, Routes.home),
                   
                    color: Appcolor.buttoncolor,
                    text: 'Create Account',
                  ),
                const  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Custombutton2(
                          text: Text(
                            "Google",
                            style: GoogleFonts.outfit(
                              color: Appcolor.textwhite,
                            ),
                          ),
                          image: RepaintBoundary(child: Image.asset(google, height: 10)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Custombutton2(
                          text: Text(
                            "Apple",
                            style: GoogleFonts.outfit(
                              color: Appcolor.textwhite,
                            ),
                          ),
                          image: RepaintBoundary(child: Image.asset(ios, height: 5)),
                        ),
                      ),
                    ],
                  ),
                const  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text(
                        "Already have an account? ",
                        style: TextStyle(color: Appcolor.textwhite),
                      ),
                   const  SizedBox(width: 8,),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.login);
                        },
                        child: const Text("Log In",style: TextStyle(color: Appcolor.textwhite),))
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