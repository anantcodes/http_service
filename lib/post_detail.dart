import 'package:flutter/material.dart';
import 'package:http_service/post_model.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  const PostDetail({required this.post,});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Title"),
                subtitle: Text(post.title)
              ),
              ListTile(
                  title: Text("ID"),
                  subtitle: Text("${post.id}"),
              ),
              ListTile(
                  title: Text("Body"),
                  subtitle: Text(post.body)
              ),
              ListTile(
                  title: Text("User ID"),
                  subtitle: Text("${post.userId}")
              )
            ],
          ),
        ),
      ),
    );
  }
}
