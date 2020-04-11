import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          textTheme: TextTheme(
              title: TextStyle(
                  color: Colors.purple[900],
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          elevation: 0,
          title: new Text('FILTER'),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                icon: new Icon(
                  Icons.close,
                  size: 40,
                ),
                color: Colors.grey,
                onPressed: () => Navigator.pop(context),
              ),
            )
          ]),
      body: FilterItems(),
    );
  }
}

class FilterItems extends StatefulWidget {
  @override
  _FilterItemsState createState() => _FilterItemsState();
}

class _FilterItemsState extends State<FilterItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
