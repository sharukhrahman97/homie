import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homie/HomeBottomNav.dart';

void main() {
  runApp(MaterialApp(home: LookingForARoom()));
}

class LookingForARoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment(-1.5, 0),
                    width: 250,
                    height: 30,
                    child: Text(
                      'SELECT TAGS',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Calibri',
                        color: Color(0xff5F34A7),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: 295,
                    height: 20,
                    alignment: Alignment(-1, -5),
                    child: Text(
                      'And find your matching Room/Mate!',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontFamily: 'Calibri'),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      alignment: Alignment(20, 0),
                      width: 50,
                      height: 50,
                      child: FlatButton(
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                        color: Colors.white,
                        padding: EdgeInsets.fromLTRB(-5, 10, -5, 10),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNav()));
                        },
                      ))
                ],
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 58.5,
                alignment: Alignment(-0.5, 60),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Container(
                        width: 200,
                        alignment: Alignment(-20, 2),
                        child: TextField(
                          textAlign: TextAlign.center,
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.white70,
                            filled: false,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment(20, 0),
                        width: 70,
                        child: Container(
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.grey)),
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Colors.black,
                            child: Text('TAGS',
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'Calibri')),
                          ),
                          width: 80,
                        ),
                      ),
                    ],
                  ),
                  height: 70,
                  width: 350,
                  padding: EdgeInsets.all(16.50),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(
                      color: Color(
                          0xff5F34A7), //                   <--- border color
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(children: <Widget>[
            Container(
              alignment: Alignment(0, 100),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment(0, 0),
                  child: Container(
                      height: 482.5,
                      width: 410,
                      child: Wrap(
                        spacing: 5.0,
                        runSpacing: 3.0,
                        children: <Widget>[
                          filterChipWidget(chipName: 'Gamer'),
                          filterChipWidget(chipName: 'Biker'),
                          filterChipWidget(chipName: 'Anime'),
                          filterChipWidget(chipName: 'Photography'),
                          filterChipWidget(chipName: 'Cat-friendly'),
                          filterChipWidget(chipName: 'Dog-friendly'),
                          filterChipWidget(chipName: 'Vegetarian'),
                          filterChipWidget(chipName: 'Spiritual'),
                          filterChipWidget(chipName: 'K-pop'),
                          filterChipWidget(chipName: 'Signing'),
                          filterChipWidget(chipName: 'Rational'),
                          filterChipWidget(chipName: 'Sensitive'),
                        ],
                      )),
                ),
              ),
            ),
          ]),
          Container(
              alignment: Alignment(0.8, 0),
              height: 60,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => BottomNav()),);
                },
                color: Color(0xff5F34A7),
                textColor: Colors.white,
                child: Text('FIND MATCH',
                    style: TextStyle(fontSize: 14, fontFamily: 'Calibri')),
              ))
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

// ignore: camel_case_types
class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Color(0xff6200ee),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: StadiumBorder(side: BorderSide()),
      backgroundColor: Colors.transparent,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffeadffd),
    );
  }
}
