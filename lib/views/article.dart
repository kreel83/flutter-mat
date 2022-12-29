import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/models/article.dart';
import 'package:my_app/services/article_service.dart';
import 'package:google_fonts/google_fonts.dart';




class ArticlePage extends StatelessWidget {  
  ArticlePage(this.article);
  late Article article;    
   
  @override  



  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      home: ShowArticle(article)
      );
    
  }

  
}

class ShowArticle extends StatelessWidget {
  const ShowArticle(this.article,{super.key});
  final Article article;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text('Les articles'),),
      body: SingleChildScrollView(
        child: Column(children: [
          HeaderSection(article),
          PlaylistSection(article),

        ]),       
      ),
    ) ;
  }
}





class HeaderSection extends StatelessWidget {
  HeaderSection(this.article);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
           image: NetworkImage(article.photo),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        )
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            bottom: 30,
            child: Text(article.legende, style: GoogleFonts.arizonia(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w800),)
            ),
        
        ],

      ),

    );
  }

}

class PlaylistSection extends StatelessWidget {
  PlaylistSection(this.article);
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 40, 20, 20),
      
      
      child: Column(
        children: [
          Text(article.name, style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 16
          ),),
          SizedBox(height: 20,),
          Text(article.description, style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14
          ),),
          SizedBox(height: 20,),
          Text(article.pa_html, style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 14
          ),),
        ],
        
      ),
    );
  }

}