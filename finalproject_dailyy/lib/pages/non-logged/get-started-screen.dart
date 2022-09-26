// ignore_for_file: file_names, prefer_const_constructors

import 'package:finalproject_dailyy/pages/logged/login.dart';
import 'package:finalproject_dailyy/pages/logged/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finalproject_dailyy/models/images.dart';
import 'package:finalproject_dailyy/shared/color.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        margin: EdgeInsets.only(top: 112),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                height: 181, width: 150, child: Image.asset((images[0].image))),
            SizedBox(height: 70),
            MaterialButton(
                minWidth: 250.0,
                height: 45.0,
                color: (colors[0].color),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () => Get.to(Login()),
                child: Text('LOGIN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 24))),
            SizedBox(height: 10),
            Text("or",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: 'Poppins')),
            SizedBox(height: 10),
            MaterialButton(
                minWidth: 250.0,
                height: 45.0,
                color: (colors[1].color),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () => Get.to(Register()),
                child: Text('REGISTER',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 24))),
          ],
        ),
      ),
    ));
  }
}
