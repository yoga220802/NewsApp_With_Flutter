// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:finalproject_dailyy/controller/Drawer.dart';
import 'package:finalproject_dailyy/models/special.dart';
import 'package:finalproject_dailyy/services/link_control.dart';
import 'package:finalproject_dailyy/models/images.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//this page have many feature shareing app..contact and many more

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURLFACEBOOK() async {
      if (await canLaunch(facebookProfile)) {
        await launch(facebookProfile);
      } else {
        throw 'Could not launch $facebookProfile';
      }
    }

    _launchWhatsapp() async {
      if (await canLaunch(chatWA)) {
        await launch(chatWA);
      } else {
        throw 'Could not launch $chatWA';
      }
    }

    _lanchInsta() async {
      if (await canLaunch(instagramProfile)) {
        await launch(instagramProfile);
      } else {
        throw 'Could not launch $instagramProfile';
      }
    }

    _lanchemail() async {
      if (await canLaunch(emailPrfile)) {
        await launch(emailPrfile);
      } else {
        throw 'Could not launch $emailPrfile';
      }
    }

    return Scaffold(
      backgroundColor: mC,
      drawer: DrawerScreen(),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: NMButton(
                          icon: Icons.arrow_back,
                        )),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.exclamationCircle),
                      onTap: () {},
                    ),
                  ],
                ),
                AvatarImage(),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Daily Y',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Center(
                      child: Text(
                        ' Yoga Agustiansyah ',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Text(
                  'est 2021',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                SizedBox(height: 9),
                Center(
                  child: Text(
                    'CONTACT US',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 9),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        child: NMButton(icon: FontAwesomeIcons.facebookF),
                        onTap: () async {
                          _launchURLFACEBOOK();
                        }),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.whatsapp),
                      onTap: () async {
                        _launchWhatsapp();
                      },
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.instagram),
                      onTap: () async {
                        _lanchInsta();
                      },
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.envelope),
                      onTap: () async {
                        _lanchemail();
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Flexible(
                  child: Text(
                    'I am Human (?)',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),

                SizedBox(
                  height: 14,
                ),
                // Row(
                //   children: <Widget>[
                //     SocialBox(
                //         icon: FontAwesomeIcons.dribbble,
                //         count: '35',
                //         category: 'shots'),
                //     SizedBox(width: 15),
                //     SocialBox(
                //         icon: FontAwesomeIcons.userAlt,
                //         count: '1.2k',
                //         category: 'followers'),
                //   ],
                // ),

                SizedBox(height: 2),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.17,
            minChildSize: 0.07,
            maxChildSize: 0.4,
            builder: (BuildContext context, scroll) {
              return Container(
                decoration: nMbox,
                child: ListView(
                  controller: scroll,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 1,
                            ),
                            child: Icon(Icons.info, color: fCL),
                          ),
                          SizedBox(height: 35),
                          Container(
                            width: 150,
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                    child: SizedBox(
                                        height: 100,
                                        child: Image.asset(images[0].image))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: nMboxInvert,
        child: Row(
          children: <Widget>[
            FaIcon(icon, color: Colors.pink.shade800, size: 20),
            SizedBox(width: 8),
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 3),
            Text(
              category,
            ),
          ],
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final IconData icon;
  const NMButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: nMbox,
      child: Icon(
        icon,
        color: fCL,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: new AssetImage(images[8].image)),
          ),
        ),
      ),
    );
  }
}
