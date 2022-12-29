import 'dart:convert';

import '../models/article.dart';
import 'package:http/http.dart' as http;


class ArticlesService {

  List<Article> parseArticles(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Article>((json) => Article.fromJson(json)).toList();
  }

  Future<dynamic> getArticles() async {
    var client = http.Client();
    var uri = Uri.parse('http://mesprojets-laravel.mborgna.vigilience.corp/articles');
    var response = await client.get(uri);
    print(response);
    if (response.statusCode == 200) {
      var json = response.body;
      return parseArticles(json);

    } else {
      return false;
    }
  }
}