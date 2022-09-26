// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject_dailyy/models/carousel_item.dart';
import 'package:finalproject_dailyy/models/images.dart';
import 'package:finalproject_dailyy/shared/color.dart';
import 'package:finalproject_dailyy/controller/Drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List cardList = [Item1(), Item2(), Item3(), Item4()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HOME",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
          child: Container(
              color: (colors[2].color),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 120,
                                width: 54,
                                child: Image.asset(images[1].image)),
                            SizedBox(
                              width: 13,
                            ),
                            SizedBox(
                                height: 83,
                                width: 139,
                                child: Text(
                                    'The News That Can Make You Says "WHY?"',
                                    style: TextStyle(
                                        fontFamily: 'Poppins', fontSize: 18))),
                            SizedBox(width: 13),
                            SizedBox(
                                height: 96,
                                width: 80,
                                child: Image.asset(images[0].image))
                          ],
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            height: 250,
                            child: MaterialApp(
                              theme: ThemeData(
                                primarySwatch: Colors.blue,
                              ),
                              home: Scaffold(
                                  body: Column(
                                children: <Widget>[
                                  CarouselSlider(
                                    options: CarouselOptions(
                                      height: 200.0,
                                      autoPlay: true,
                                      autoPlayInterval: Duration(seconds: 3),
                                      autoPlayAnimationDuration:
                                          Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      pauseAutoPlayOnTouch: true,
                                      aspectRatio: 2.0,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _currentIndex = index;
                                        });
                                      },
                                    ),
                                    items: cardList.map((card) {
                                      return Builder(
                                          builder: (BuildContext context) {
                                        return SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.30,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Card(
                                            color: Colors.blueAccent,
                                            child: card,
                                          ),
                                        );
                                      });
                                    }).toList(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                        map<Widget>(cardList, (index, url) {
                                      return Container(
                                        width: 10.0,
                                        height: 10.0,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 2.0),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: _currentIndex == index
                                              ? Colors.blueAccent
                                              : Colors.grey,
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              )),
                            )),
                        SizedBox(height: 20),
                        SizedBox(height: 10),
                        SizedBox(
                            height: 200,
                            child: GridView.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 10,
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 92,
                                        child: SizedBox(
                                            child: Image.asset(
                                          images[3].image,
                                          scale: 1.5,
                                        )),
                                      ),
                                      // Text(items[0].name),
                                      // Text(items[0].price.toString()),
                                      TextButton(
                                        style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  colors[3].color),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Selengkapnya...',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 92,
                                        child: SizedBox(
                                            child: Image.asset(
                                          images[2].image,
                                        )),
                                      ),
                                      // Text(items[1].name),
                                      // Text(items[1].price.toString()),
                                      TextButton(
                                        style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  colors[3].color),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'Selengkapnya...',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'),
                                        ),
                                      )
                                    ],
                                  ),
                                ]))
                      ])))),
    );
  }
}
