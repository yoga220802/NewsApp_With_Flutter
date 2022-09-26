//ignore_for_file: camel_case_types,file_names, prefer_const_constructors, avoid_print
import 'package:finalproject_dailyy/controller/Navigation.dart';
import 'package:finalproject_dailyy/models/images.dart';
import 'package:finalproject_dailyy/pages/logged/about.dart';
import 'package:finalproject_dailyy/pages/logged/categories-of-news/category-list.dart';
import 'package:finalproject_dailyy/pages/non-logged/get-started-screen.dart';
import 'package:finalproject_dailyy/shared/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatefulWidget {
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  const DrawerScreen({Key key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      print(auth.currentUser.email);
    }
    return Drawer(
        child: Container(
      color: (colors[2].color),
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              currentAccountPicture: SizedBox(
                  height: 90, width: 106, child: Image.asset(images[0].image)),
              accountEmail: Text(auth.currentUser.email,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black,
                  )),
              accountName: null,
              decoration: BoxDecoration(color: Colors.grey)),
          DrawerListTile(
              iconData: Icons.home_filled,
              title: "Home",
              onTilePressed: () => Get.to(Navigation())),
          DrawerListTile(
            iconData: Icons.category,
            title: "Category",
            onTilePressed: () => Get.to(Categories()),
          ),
          DrawerListTile(
            iconData: Icons.logout,
            title: "Logout",
            onTilePressed: () => {
              _signOut().then((value) => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => GetStarted()))),
            },
          ),
          DrawerListTile(
            iconData: Icons.person,
            title: "about me",
            onTilePressed: () => Get.to(About()),
          ),
        ],
      ),
    ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key key, this.iconData, this.title, this.onTilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
