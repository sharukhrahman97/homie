import 'package:flutter/material.dart';
import 'reuseable_search_widget.dart';
void main() => runApp(Rooms());


class Rooms extends StatefulWidget {
  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchCard(),
    );
  }
}