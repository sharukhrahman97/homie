import 'package:flutter/material.dart';

class Sort {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _createTile(
                context,
                'Sort by Price',
              ),
              _createTile(
                context,
                'Sort by Availablity',
              ),
            ],
          );
        });
  }

  ListTile _createTile(
    BuildContext context,
    String name,
  ) {
    return ListTile(
      title: Text(name),
      onTap: () {
        Navigator.pop(context);//yet to code for server
      },
    );
  }
}
