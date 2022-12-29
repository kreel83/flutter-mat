// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/views/home_page.dart';
import 'player_page.dart';
import './views/articles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          HeaderSection(),
          PlaylistSection(),

        ]),       
      ),
    bottomNavigationBar: MyButtomNavigationBar(),
    ) ;
  }
}

class MyButtomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.pause, color: Colors.white,), label: ''),
        BottomNavigationBarItem(
          icon: Text('34 35 - Ariana Grande', 
                  style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
          label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_circle_up, color: Colors.white,), label: ''),
      ],

    );
  }
}


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(60);
  Widget build(BuildContext context) {
    return AppBar(        
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: null
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: ()  {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => ArticlesPage()
                    )
                );
            }
          )
        ],
      );
  }
  
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/ariana.jpg'),
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
            child: Text('Ariana Grande', style: GoogleFonts.arizonia(color: Colors.white, fontSize: 43, fontWeight: FontWeight.w800),)
            ),
          Positioned(
            right: 0,
            bottom: 20,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HttpHomePage()
                    )
                );
              }, 
              color: Colors.blue,
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(17),
                child: Icon(Icons.play_arrow_rounded, color: Colors.white, size: 30,),
              ),),
          )
        ],

      ),

    );
  }

}

class PlaylistSection extends StatelessWidget {
  final List playList = [
    {
      'title': 'No tears to cry',
      'duration': '3.16',
      'played': false
    },
    {
      'title': 'Imagine',
      'duration': '3.12',
      'played': false
    },
    {
      'title': '34 35',
      'duration': '3.43',
      'played': true
    },
    {
      'title': 'Into you',
      'duration': '3.33',
      'played': false
    },
    {
      'title': 'positions',
      'duration': '3.36',
      'played': false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 40, 20, 20),
      
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular',
               style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text('Show All',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.blue
                ),
                ),
              )
              
            ],
            
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: playList.map((song) {
              return Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(song['title'],
                  style: TextStyle(color: song['played'] ? Colors.blue : Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                  Row(children: [
                    Text(song['duration'], style: TextStyle(color: song['played'] ? Colors.blue : Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                    Icon(Icons.more_vert, color: song['played'] ? Colors.blue : Colors.grey)

                  ],)
                ],)
              );
            } ).toList(),

          )
          
        ],
      ),
    );
  }

}

