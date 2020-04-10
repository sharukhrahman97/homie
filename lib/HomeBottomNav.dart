import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homie/Chat.dart';
import 'package:homie/Home.dart';
import 'package:homie/Homies.dart';
import 'package:homie/Rooms.dart';
void main() => runApp(RoomApp());

class RoomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavyBar()
    );
  }
}



class BottomNavyBar extends StatefulWidget {
  
  @override
  _BottomNavyBarState createState() => _BottomNavyBarState();
}


class  _BottomNavyBarState extends State<BottomNavyBar> {
    int _selectedIndex = 0;
    final List<Widget> _children = [
      Home(),
      Rooms(),
      Homies(),
      Chat(),
    ];
 /*  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: rooms',
      style: optionStyle,
    ),
    Text(
      'Index 2: roomies',
      style: optionStyle,
    ),
    Text(
      'Index 3: chat',
      style: optionStyle,
    ),
  ];  */
 
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    }); 
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Image.asset('assets/homeappnavlogo.png',fit: BoxFit.cover),),
      body: _children[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            /* title: Text('Home'), */
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            /* title: Text('Business'), */
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            /* title: Text('School'), */
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_comment),
            /* title: Text('School'), */
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[900],
        onTap:_onItemTapped,
      ),

    );
  }
}
