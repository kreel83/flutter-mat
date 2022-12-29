import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/models/article.dart';
import 'package:my_app/services/articles_service.dart';
import 'package:my_app/services/article_service.dart';
import 'LogInScreen.dart';
import 'package:my_app/views/article.dart';

import '../models/post.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  List<Article>? articles;
  var isLoaded = false;
  @override

  void initState() {
    super.initState();
    getData();
 
  }

  getData() async {
      articles = await ArticlesService().getArticles();      
      print('articles');
      if (articles != null) {
        setState(() {
          isLoaded = true;
        });
      }
  }




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Les articles'),),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: articles?.length,
          itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                      Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => ArticlePage(articles![index])
                      )
                );
                  },
                  leading: SizedBox(
                    width: 50,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(articles![index].photo),
                      fit: BoxFit.cover)
                    ),
                    )),
                  // leading: Container(
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(image: NetworkImage('http://mesprojets-laravel.mborgna.vigilience.corp'+articles![index].photo),
                  //     fit: BoxFit.cover)
                  //   ),
                  // ),
                  // 'http://mesprojet-laravel.mborgna.vigilience.corp'+articles![index].photo,
                  title: Text(articles![index].name,                   
                    style: TextStyle(
                      fontSize: 12
                    ),
                  ),
                  subtitle: Text(articles![index].description,                   
                    style: TextStyle(
                      fontSize: 10
                    ),),
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