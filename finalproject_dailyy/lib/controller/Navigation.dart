// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, file_names

import 'package:finalproject_dailyy/pages/logged/home.dart';
import 'package:finalproject_dailyy/pages/logged/news.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentTab = 0;
  final List<Widget> screens = [Home(), News()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = Home();
                              currentTab = 0;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home,
                                  color: currentTab == 0
                                      ? Colors.blue
                                      : Colors.grey),
                              Text(
                                'Home',
                                style: TextStyle(
                                    color: currentTab == 0
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                            ],
                          )),
                      MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = News();
                              currentTab = 1;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.new_label_sharp,
                                  color: currentTab == 1
                                      ? Colors.blue
                                      : Colors.grey),
                              Text(
                                'News',
                                style: TextStyle(
                                    color: currentTab == 1
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                            ],
                          ))
                    ],
                  )
                ],
              ))),
    );
  }
}
