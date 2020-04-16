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
        body: new Column(
      children: [
        Expanded(child: SearchCard(), flex: 1),
        Expanded(
          child: DummyList(),
          flex: 4,
        )
      ],
    ));
  }
}

class DummyList extends StatefulWidget {
  @override
  _DummyListState createState() => _DummyListState();
}

class _DummyListState extends State<DummyList> {
  final List<List<String>> images = [
    ['assets/images/image1.jpg'],
    ['assets/images/image2.jpg'],
    ['assets//images/image3.jpg'],
    ['assets/images/image4.jpg'],
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < images.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _previous() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: const EdgeInsets.all(4.0),
      itemBuilder: (BuildContext context, i) {
        return new Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 0,
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: GestureDetector(
                    onHorizontalDragEnd: (DragEndDetails details) {
                      if (details.velocity.pixelsPerSecond.dx > 0) {
                        _previous();
                      } else if (details.velocity.pixelsPerSecond.dx < 0) {
                        _next();
                      }
                    },
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(images[currentIndex][0]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text("HOMY GRG1507 Sector 01"),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      "Jharsa Village, Sector 01, Gurgaon",
                      textScaleFactor: .8,
                    ),
                  ),
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(child: Text("unisex")),
                        Icon(Icons.wc)
                      ],
                    ),
                    Column(
                      children: [
                        Container(child: Text("Occupancy")),
                        Container(
                          child: Text("Shared & Private"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(child: Text("Hosted by")),
                        Icon(Icons.person)
                      ],
                    )
                  ],
                )),
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      side: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Starting at"),
                          Text("RS:5000"),
                        ],
                      ),
                      FlatButton(
                        onPressed: () {
                          /*.. */
                        },
                        color: Colors.purple[900],
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                        child: Text("Schedule a Visit"),
                      )
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }
}
