import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homie/Chat.dart';
import 'package:homie/Home.dart';
import 'package:homie/LookingForARoom.dart';
import 'package:homie/LookingForARoomate.dart';
import 'package:homie/HomeBottomNav.dart';
import 'package:homie/Rooms.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen()
    );
  }
}

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Positioned(
            top: 10,
            bottom: 0,
            child: Container(
              height: 400,
              alignment: Alignment(0,-1),
              child: Image(
                image: AssetImage('assets/logo.png'),),
            ),
          ),
          Positioned(
            child: Container(
              alignment: Alignment(0,0),
              child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(35, 8, 35, 8),
                  color: Color(0xff5F34A7),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                  },
                  child: Text('Looking for a room ?',
                      style: TextStyle(fontSize: 20, color: Colors.white))
              ),
            ),
          ),
          Positioned(
            child: Container(
              child: Text('Post your requirements and a room owner will find you! ',
                style: TextStyle(fontSize: 12, color: Colors.black),textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            child: Container(       
              child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(14, 8, 14, 8),
                  color: Color(0xff5F34A7),
                  onPressed: () {
                    Navigator.push(context,new MaterialPageRoute(builder: (context)=> BottomNav()),);
                  },
                  child: Text('Looking for a roommate ?',
                      style: TextStyle(fontSize: 20, color: Colors.white))),
            ),
          ),

          Positioned(
              child: Container(
                alignment: Alignment(0,3),
                child: Text('Post your property details and a user will find you! ',
                  style: TextStyle(fontSize: 12, color: Colors.black),textAlign: TextAlign.end,
                ),
              )
          )
        ],
      ),
    );
  }
}
