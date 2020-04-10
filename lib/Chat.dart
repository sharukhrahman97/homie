import 'package:flutter/material.dart';
import 'package:homie/reuseable_search_widget.dart';
void main() => runApp(Chat());

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchCard(),
    );
  }
}