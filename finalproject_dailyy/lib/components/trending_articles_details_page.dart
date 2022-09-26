//Now let's create the article details page

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:finalproject_dailyy/models/api/article_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    launchURL() async {
      if (await canLaunch(article.url)) {
        await launch(article.url);
      } else {
        throw 'Could not launch ${article.url}';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          article.title,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                //let's add the height

                image: DecorationImage(
                    image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                article.source.name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              article.description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              article.content,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextButton(onPressed: () => {launchURL()}, child: Text(article.url))
          ],
        ),
      ),
    );
  }
}
