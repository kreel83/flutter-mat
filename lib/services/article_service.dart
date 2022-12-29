import 'dart:convert';

import '../models/article.dart';
import 'package:http/http.dart' as http;


class ArticleService {

  Article parseArticle(String responseBody) {
    final json = jsonDecode(responseBody);
    print(json);
    return Article.fromJson(json);
  }

  Future<dynamic> getArticle(String url) async {
    var client = http.Client();
    var uri = Uri.parse('http://mesprojets-laravel.mborgna.vigilience.corp/show_article/'+url);
    var response = await client.get(uri);
    print(response.body);
    if (response.statusCode == 200) {
      var json = response.body;
      return parseArticle(json);;

    } else {
      return false;
    }
  }
}