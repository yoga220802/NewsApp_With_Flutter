// ignore_for_file: prefer_const_constructors

import 'package:finalproject_dailyy/pages/logged/home.dart';
import 'package:finalproject_dailyy/pages/logged/login.dart';
import 'package:finalproject_dailyy/pages/non-logged/loading_screen.dart';
import 'package:finalproject_dailyy/pages/non-logged/splash-screen.dart';
import 'package:finalproject_dailyy/shared/color.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// runApp(const MyApp(),

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(GetMaterialApp(home: Splash()));
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: (colors[1].color),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
