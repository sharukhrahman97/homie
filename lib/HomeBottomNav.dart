import 'package:flutter/material.dart';
import 'package:homie/Home.dart';
import 'package:homie/Chat.dart';
import 'package:homie/Home.dart';
import 'package:homie/Homies.dart';
import 'package:homie/Rooms.dart';
void main() => runApp(BottomNav());

class BottomNav extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: BottomNavyBar(),
    );
  }
}

class BottomNavyBar extends StatefulWidget {
  
  @override
  _BottomNavyBarState createState() => _BottomNavyBarState();
}


class  _BottomNavyBarState extends State<BottomNavyBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Rooms(),
    Homies(),
    Chat(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title:Text("homy"),),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("user"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("homes"),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text("homies"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text("chat"),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}