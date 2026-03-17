import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constant/color/colors.dart';
import 'package:todoapp/constant/image/image_const.dart';
import 'package:todoapp/widget/custombutton.dart';
import 'package:todoapp/widget/textfield.dart';
import 'package:todoapp/routes/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // Always dispose controllers to prevent memory leaks
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              Image.asset(tick, height: 70),

              const SizedBox(height: 20),

              // Title
              const Text(
                "Login",
                style: TextStyle(
                  color: Appcolor.textwhite,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              // Subtitle
              const Text(
                "Start managing your tasks efficiently and boost your productivity.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Appcolor.lghtwhite),
              ),

              const SizedBox(height: 30),

              // Input fields
              Column(
                children: [
                  Textfield(
                    controller: nameController,
                    icon: const Icon(Icons.person, color: Appcolor.textwhite),
                    hinttext: 'Name',
                    rowtext: 'Name',
                  ),
                  const SizedBox(height: 15),
                  Textfield(
                    controller: emailController,
                    icon: const Icon(Icons.email, color: Appcolor.textwhite),
                    hinttext: 'name@example.com',
                    rowtext: 'Email Address',
                  ),
                  const SizedBox(height: 15),
                  Textfield(
                    controller: passwordController,
                    icon: const Icon(Icons.password, color: Appcolor.textwhite),
                    hinttext: 'Password',
                    rowtext: 'Password',
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Primary button
              Custombutton(
                onPressed: () => Navigator.pushNamed(context, Routes.home),
                color: Appcolor.buttoncolor,
                text: 'Create Account',
              ),

              const SizedBox(height: 30),

              // Social login buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Custombutton2(
                    text: Text(
                      "Google",
                      style: GoogleFonts.outfit(color: Appcolor.textwhite),
                    ),
                    image: Image.asset(google, height: 20),
                  ),
                  const SizedBox(width: 20),
                  Custombutton2(
                    text: Text(
                      "Apple",
                      style: GoogleFonts.outfit(color: Appcolor.textwhite),
                    ),
                    image: Image.asset(ios, height: 20),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Switch to login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(color: Appcolor.textwhite),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, Routes.login),
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        color: Appcolor.textwhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}