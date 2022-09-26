// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:finalproject_dailyy/controller/Navigation.dart';
import 'package:finalproject_dailyy/models/images.dart';
import 'package:finalproject_dailyy/models/special.dart';
import 'package:finalproject_dailyy/pages/logged/register.dart';
import 'package:finalproject_dailyy/pages/non-logged/forgot-password.dart';
import 'package:finalproject_dailyy/shared/color.dart';
import 'package:finalproject_dailyy/widget/Button.dart';
import 'package:finalproject_dailyy/widget/textform.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  String nEmail, nPassword;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      color: (colors[2].color),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 80, width: 96, child: Image.asset((images[0].image))),
          SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text("Welcome back,\n please Login to continue",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ))
          ]),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text("Email",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ))
          ]),
          //input email form
          InputEmail,

          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text("Password",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ))
          ]),
          //input password form
          InputPassword,

          ForgotPass,
          //login button
          LoginButton,

          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Does not have an account? ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: ('Poppins'),
                  fontSize: 12),
            ),
            GoToRegister,
          ]),
        ],
      ),
    )));
  }
}
