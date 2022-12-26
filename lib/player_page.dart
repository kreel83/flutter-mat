import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBarPL(),
      body: MyPagePL()
    ) ;
  }
}



class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}



class MyAppBarPL extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarPL({super.key});
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
            onPressed: null
          )
        ],
      );
  }
  
}

class MyPagePL extends StatelessWidget {
  const MyPagePL({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Positioned(        

          bottom: 0,
          right: 0,
          left: 0,
          child: Container(         
            height: 600,       
            padding: EdgeInsets.fromLTRB(30, 40, 20, 20),
            decoration: BoxDecoration(
              color: Colors.amber,              
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
            ),
            child: Column(
              
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 160,
                      width: 160,                     
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                          image: AssetImage('images/ariana.jpg')
                        )
                      ),
                    )
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('coucou')
                
              ],
                
              )
            ],)
            
            )

                     
          ),
        
      ],
    );
        
  }
  
}