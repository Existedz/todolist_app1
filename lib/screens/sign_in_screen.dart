import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/constant/constant.dart';
import 'package:todolist_app/components/my_textformfield.dart';
import 'package:todolist_app/screens/sign_up_screen.dart';

import '../components/my_button.dart';
import '../components/my_icon_btn.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //Function signInUser()
  void signInUser() async {
    // Add username and password to Firebase
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
          child: Column(
            children: [
              const Spacer(),
              Text(
                'Hello, ready to get started!.',
                style: textTitle,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Please sign-in with your email and password.',
                style: textSubTitle,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFormField(
                  controller: emailController,
                  obscureText: false,
                  labelText: 'Email',
                  hintText: 'Enter your email'),
              const SizedBox(
                height: 20,
              ),
              MyTextFormField(
                  controller: passwordController,
                  obscureText: true,
                  labelText: 'Password',
                  hintText: 'Enter your password'),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password?',
                    style: GoogleFonts.lato(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(onTap: signInUser, hinText: 'Sign In'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.8,
                    color: Colors.grey,
                  )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconBtn(
                    imagePath: 'assets/images/google_icon.png',
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MyIconBtn(
                    imagePath: 'assets/images/apple_icon.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                    },
                    child: Text(
                      'Register now.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    ); // Scaffold
  }
}
