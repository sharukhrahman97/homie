import 'package:flutter/material.dart';
import 'HomeBottomNav.dart';

class Choice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          new Expanded(
            flex: 3,
            child: Container(
              child: Image.asset("assets/logo.png"),
            ),
          ),
          new Expanded(
              flex: 2,
              child: Column(
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,new MaterialPageRoute(builder: (context)=> BottomNav()),);
                    },
                    child: Text("Looking for a Room?"),
                    color: Colors.purple[900],
                    textColor: Colors.white,
                  ),
                  Text(
                      "Post your requirements and a room owner will find you!"),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,new MaterialPageRoute(builder: (context)=> BottomNav()),);
                    },
                    child: Text("Looking for a Roomate?"),
                    color: Colors.purple[900],
                    textColor: Colors.white,
                  ),
                  Text("Post your property details and a user will find you! "),
                ],
              ))
        ],
      ),
    );
  }
}
