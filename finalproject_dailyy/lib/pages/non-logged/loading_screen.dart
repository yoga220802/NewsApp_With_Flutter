// ignore_for_file: unused_import, prefer_const_constructors, file_names, annotate_overrides

import 'dart:async';

import 'package:finalproject_dailyy/controller/Navigation.dart';
import 'package:finalproject_dailyy/shared/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finalproject_dailyy/models/images.dart';
import 'package:finalproject_dailyy/pages/non-logged/get-started-screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () => Get.to(Navigation()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 1000,
        color: (colors[2].color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 250,
                child: SpinKitWave(color: CupertinoColors.black)),
          ],
        ),
      ),
    ));
  }
}
