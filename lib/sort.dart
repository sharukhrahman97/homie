import 'package:flutter/material.dart';

class Sort {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text("sort by availablity"),
                onTap: () {
                  Navigator.pop(context); //yet to code for server
                },
              ),
              ListTile(
                title: Text("sort by price"),
                onTap: () {
                  Navigator.pop(context); //yet to code for server
                },
              ),
            ],
          );
        });
  }
}
