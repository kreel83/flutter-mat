import 'dart:convert';

import '../models/post.dart';
import 'package:http/http.dart' as http;


class RemoteService {

  List<Post> parsePosts(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Post>((json) => Post.fromJson(json)).toList();
  }

  Future<dynamic> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    print(response);
    if (response.statusCode == 200) {
      var json = response.body;
      return parsePosts(json);

    } else {
      return false;
    }
  }
}