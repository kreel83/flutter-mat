import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/services/remote_service.dart';
import 'LogInScreen.dart';

import '../models/post.dart';

class HttpHomePage extends StatefulWidget {
  const HttpHomePage({super.key});

  @override
  State<HttpHomePage> createState() => _HttpHomePageState();
}

class _HttpHomePageState extends State<HttpHomePage> {
  List<Post>? posts;
  var isLoaded = false;
  @override

  void initState() {
    super.initState();
    getData();
    NavigateToLogIn();

  }

  getData() async {
      posts = await RemoteService().getPosts();
      print(posts);
      print('couocu');
      if (posts != null) {
        setState(() {
          isLoaded = true;
        });
      }
  }

  void NavigateToLogIn() {
    Timer(Duration(seconds: 5), () => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext contect) => LogInScreen())      
    ));

  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Http'),),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text(posts![index].title),
                )
              ]),
            
          );
        }),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      )
      
    )
    ;
  }
}