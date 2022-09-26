// ignore_for_file: sized_box_for_whitespace, prefer_typing_uninitialized_variables, file_names

import 'package:finalproject_dailyy/controller/Navigation.dart';
import 'package:finalproject_dailyy/pages/logged/login.dart';
import 'package:finalproject_dailyy/pages/logged/register.dart';
import 'package:finalproject_dailyy/pages/non-logged/forgot-password.dart';
import 'package:finalproject_dailyy/pages/non-logged/loading_screen.dart';
import 'package:finalproject_dailyy/shared/color.dart';
import 'package:finalproject_dailyy/widget/textform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

FirebaseAuth auth = FirebaseAuth.instance;
//REGISTER
MaterialButton RegisterButton = MaterialButton(
    minWidth: 250.0,
    height: 45.0,
    color: (HexColor("9A9A9B")),
    textColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    onPressed: () async {
      try {
        await _firebaseAuth
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text)
            .then((value) => Get.to(Loading()));
      } catch (err) {
        snackbar();
      }
    },
    //=>
    child: Text('REGISTER',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontFamily: 'Poppins', fontSize: 20)));

//LOGIN

MaterialButton LoginButton = MaterialButton(
  minWidth: 250.0,
  height: 45.0,
  color: HexColor("9A9A9B"),
  textColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
  onPressed: () async {
    try {
      await _firebaseAuth
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) => Get.to(Loading()));
    } catch (err) {
      snackbar();
    }
  },
  child: Text('LOGIN',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontFamily: 'Poppins', fontSize: 20)),
);

//Forgot Password
TextButton ForgotPass = TextButton(
  style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(colors[3].color)),
  onPressed: () => Get.to(ForgotPassword()),
  child: Text(
    'Forgot Password ?',
    style: TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
  ),
);
//Go To Register
TextButton GoToRegister = TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(colors[3].color),
  ),
  onPressed: () => Get.to(Register()),
  child: Text(
    'Register',
    style: TextStyle(
        fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
  ),
);

//Go To Login
TextButton GoToLogin = TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(colors[3].color),
  ),
  onPressed: () => Get.to(Login()),
  child: Text(
    'Login',
    style: TextStyle(
        fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
  ),
);

Future<void> snackbar() async {
  Get.snackbar(
    "Peringatan !",
    "Ada Kesalahan Pada Data Anda",
    icon: Icon(Icons.add_alert_sharp),
    shouldIconPulse: true,
    backgroundColor: Colors.white,
    barBlur: 20,
    isDismissible: true,
    duration: Duration(seconds: 3),
  );
}
