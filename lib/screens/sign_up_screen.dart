import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/components/my_textfield.dart';
import 'package:todolist_app/constant/constant.dart';
import 'package:todolist_app/components/my_textformfield.dart';
import 'package:todolist_app/screens/sign_in_screen.dart';
import 'package:todolist_app/screens/sign_up_screen.dart';

import '../components/my_button.dart';
import '../components/my_icon_btn.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final re_passwordController = TextEditingController();

  void SignUp() async {
    //Add data to firebase
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome To KMUTNB Community',
            style: textTitle,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'To get started, please provide create an account.',
            style: textSubTitle,
          ),
          const SizedBox(
            height: 30,
          ),
          MyTextField(
              controller: nameController,
              hintText: 'Enter your name',
              obscureText: false,
              labelText: 'Name'),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
              controller: emailController,
              hintText: 'Enter your email',
              obscureText: false,
              labelText: 'Email'),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
              controller: passwordController,
              hintText: 'Enter your password',
              obscureText: true,
              labelText: 'Password'),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
              controller: re_passwordController,
              hintText: 'Enter your password again',
              obscureText: true,
              labelText: 'Re-password'),
          const SizedBox(
            height: 30,
          ),
          MyButton(onTap: SignUp, hinText: 'Register now'),
          SizedBox(
            height: 30,
          ),
          Row(
                children: [
                  Text(
                    'Have a member?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                    },
                    child: Text(
                      'Login Now.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.blue),
                    ),
                  ),
                ],
              ),
        ],
      ),
    );
  }
}
