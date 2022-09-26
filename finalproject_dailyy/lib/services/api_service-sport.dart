// ignore_for_file: file_names

import 'dart:convert';

import 'package:finalproject_dailyy/models/api/article_model.dart';
import 'package:http/http.dart';

class ApiService {
  final endPointUrl = (Uri.parse(
      "https://newsapi.org/v2/top-headlines?country=id&category=sports&apiKey=ae3fc223b1e144f2bee31cff65a7fe32"));

  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl);

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
