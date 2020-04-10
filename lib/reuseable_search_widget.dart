import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(alignment: Alignment(0.0,0.7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(autocorrect: true,
            decoration: InputDecoration(
            hintText: 'Enter the Location',
            prefixIcon: Icon(Icons.search),
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white70,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0)),
              borderSide: BorderSide(color: Colors.purple[900],
                width: 2),  
            )
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlineButton(
                child: Center(
                  child: Text("Sort"),
                ),
                onPressed:(){
                  //TODO: popup dialog
                } ,
              ),
              OutlineButton(
                child: Center(
                  child: Text("Filter"),
                ),
                onPressed: () {//TODO:full popup dialog
                }, 
              ),
            ],
          )
        ],
      ),
      )
    );
  }
}