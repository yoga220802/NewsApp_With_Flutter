// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names

import 'package:finalproject_dailyy/models/api/customListTile.dart';
import 'package:finalproject_dailyy/models/api/article_model.dart';
import 'package:finalproject_dailyy/services/api_service-techno.dart';
import 'package:finalproject_dailyy/shared/color.dart';
import 'package:flutter/material.dart';

class TechnoNews extends StatefulWidget {
  @override
  _TechnoNewsState createState() => _TechnoNewsState();
}

class _TechnoNewsState extends State<TechnoNews> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TECHNOLOGY NEWS",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),

      //Now let's call the APi services with futurebuilder wiget

      body: Container(
        color: (colors[2].color),
        child: FutureBuilder(
          future: client.getArticle(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
            //let's check if we got a response or not
            if (snapshot.hasData) {
              //Now let's make a list of articles
              List<Article> articles = snapshot.data;
              return ListView.builder(
                //Now let's create our custom List tile
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
