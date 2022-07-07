import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_service/post_model.dart';

class HttpService {
  final String postsUrl = "https://jsonplaceholder.typicode.com/posts";

  Future<void> deletePost(int id) async {
    Response res = await delete(Uri.parse("$postsUrl/$id"));
  }

  Future<List<Post>> getPosts() async {
    Response res = await http.get(Uri.parse(postsUrl));



    if(res.statusCode ==200) {
      print("Deleted!");
    }

    if(res.statusCode==200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = body.map((dynamic item) => Post.fromJson(item))
          .toList();
      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}