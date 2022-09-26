// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:finalproject_dailyy/controller/Navigation.dart';
import 'package:finalproject_dailyy/models/images.dart';
import 'package:finalproject_dailyy/models/special.dart';
import 'package:finalproject_dailyy/pages/logged/login.dart';
import 'package:finalproject_dailyy/shared/color.dart';
import 'package:finalproject_dailyy/widget/Button.dart';
import 'package:finalproject_dailyy/widget/textform.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class Register extends StatefulWidget {
  const Register({key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String nEmail, nPassword;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      color: HexColor("EAEAEA"),
      padding: EdgeInsets.symmetric(vertical: 70, horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 80, width: 96, child: Image.asset((images[0].image))),
          SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text("Welcome,\n Register first to continue",
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
          SizedBox(height: 15),
          RegisterButton,
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Have an account ?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: ('Poppins'),
                  fontSize: 12),
            ),
            GoToLogin
          ]),
        ],
      ),
    )));
  }
}
