import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() {
    return _LogInScreen();
  }
}

class _LogInScreen extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000725),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 70, 20, 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    'Welcome to our Store',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xffff2fc3),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(150))),
          ),
          Theme(
            data: ThemeData(
              hintColor: Colors.blue,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 50, right: 20, left: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                ),
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              hintColor: Colors.blue,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 20, right: 20, left: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                Text('Forget password ?', style: TextStyle(
                color: Color(0xfffff2fc3),
                fontSize: 10
                ),
                
          
              ),
              ],
          
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Log In'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffff2fc3)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)))),
            ),
          ),
                    SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(children: [
                Icon(FontAwesomeIcons.google, color: Color(0xffff2fc3),size: 16,
                ),
                SizedBox(width: 10),
                Text('Sign with google account', style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff000725)
                ),)
              ]),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffffffff)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(children: [
                Icon(FontAwesomeIcons.facebook, color: Colors.blue,size: 16,
                ),
                SizedBox(width: 10),
                Text('Sign with facebook account', style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff000725)
                ),)
              ]),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffffffff)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),),
                SizedBox(
                  height: 20,
                ),
                Text("Sign up", style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16
                ),),
                Container(
                  width: 55,
                  height: 1,
                  color: Colors.blue,
                )
              ],
            ),
         

        ],
      ),
    );
  }
}
