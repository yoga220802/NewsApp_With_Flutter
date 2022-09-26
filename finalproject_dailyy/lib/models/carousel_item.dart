// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:finalproject_dailyy/models/images.dart';
import 'package:finalproject_dailyy/pages/logged/categories-of-news/business-news.dart';
import 'package:finalproject_dailyy/pages/logged/categories-of-news/health-news.dart';
import 'package:finalproject_dailyy/pages/logged/categories-of-news/sport-news.dart';
import 'package:finalproject_dailyy/pages/logged/categories-of-news/techno-news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: () => Get.to(BusinessNews()),
          child: Image.asset(images[7].image,
              width: 300, height: 200, fit: BoxFit.cover)),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: () => Get.to(TechnoNews()),
          child: Image.asset(images[6].image,
              width: 300, height: 200, fit: BoxFit.cover)),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Get.to(HealthNews()),
        child: Image.asset(images[5].image,
            width: 300, height: 200, fit: BoxFit.cover));
  }
}

//without navigation
// class Item4 extends StatelessWidget {
//   const Item4({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             stops: [
//               0.3,
//               1
//             ],
//             colors: [
//               Color(0xffff4000),
//               Color(0xffffcc66),
//             ]),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(
//             (images[7].image),
//             height: 180.0,
//             fit: BoxFit.cover,
//           )
//         ],
//       ),
//     );
//   }
// }
