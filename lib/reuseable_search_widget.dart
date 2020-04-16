import 'package:flutter/material.dart';
import 'package:homie/Filter.dart';
import 'package:homie/sort.dart';


class SearchCard extends StatefulWidget {
  @override
  _SearchCardState createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard> {
  Sort sort = new Sort();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            autocorrect: true,
            decoration: InputDecoration(
                hintText: 'Enter the Location',
                prefixIcon: Icon(Icons.search),
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.purple[900], width: 2),
                )),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ButtonTheme(
                minWidth: 170.0,
                height: 50.0,
                child: OutlineButton(
                  child: Center(
                    child: Text("Sort",),
                  ),
                  onPressed: () => sort.mainBottomSheet(context),
                ),
              ),
              ButtonTheme(
                minWidth: 170.0,
                height: 50.0,
                child: OutlineButton(
                  child: Center(
                    child: Text("Filter"),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Filter()),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
