// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:finalproject_dailyy/controller/Drawer.dart';
import 'package:finalproject_dailyy/models/images.dart';
import 'package:finalproject_dailyy/pages/logged/categories-of-news/business-news.dart';
import 'package:finalproject_dailyy/pages/logged/categories-of-news/health-news.dart';
import 'package:finalproject_dailyy/pages/logged/categories-of-news/sport-news.dart';
import 'package:finalproject_dailyy/pages/logged/categories-of-news/techno-news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatefulWidget {
  const Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CATEGORIES",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[],
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
            height: 900,
            child: ListView(physics: NeverScrollableScrollPhysics(), children: [
              Column(children: <Widget>[
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => Get.to(SportNews()),
                    child: Image.asset(
                      images[4].image,
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () => Get.to(BusinessNews()),
                        child: Image.asset(images[7].image,
                            width: 300, height: 200, fit: BoxFit.cover)),
                  ),
                ]),
                SizedBox(height: 10),
                Column(children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () => Get.to(TechnoNews()),
                        child: Image.asset(images[6].image,
                            width: 300, height: 200, fit: BoxFit.cover)),
                  ),
                ]),
                SizedBox(height: 10),
                Column(children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () => Get.to(HealthNews()),
                        child: Image.asset(images[5].image,
                            width: 300, height: 200, fit: BoxFit.cover)),
                  ),
                ]),
              ])
            ])),
      )),
    );
  }
}
