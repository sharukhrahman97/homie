import 'package:flutter/material.dart';
import 'package:homie/Chat.dart';

class Inroom extends StatefulWidget {
  @override
  _InroomState createState() => _InroomState();
}

class _InroomState extends State<Inroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                textColor: Colors.white,
                child: Text("Chat"),
                color: Colors.lightGreen,
                onPressed: (){},
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                onPressed: (){},
                textColor: Colors.white,
                child: Text("Schedule a Visit"),
                color: Colors.purple[900],
              )
            ],
          )),
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/logo.png",
          fit: BoxFit.cover,
          width: 120.0,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Inroom_Body(),
    );
  }
}

class Inroom_Body extends StatefulWidget {
  @override
  _Inroom_BodyState createState() => _Inroom_BodyState();
}

class _Inroom_BodyState extends State<Inroom_Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/avatar.png"),
                      backgroundColor: Colors.transparent,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Firstname Lastname"),
                          Text("Match-85%")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
                height: 250,
                child: PageView.builder(
                    controller: PageController(viewportFraction: 0.85),
                    itemBuilder: (BuildContext context, int itemIndex) {
                      return Container(
                        child: Image.network(
                            "https://picsum.photos/seed/picsum/500/380"),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HMCHN12001",
                          style: TextStyle(
                              backgroundColor: Colors.purple[900],
                              color: Colors.white),
                        ),
                        Text("Shanthi colony, Annanagar, Chennai-12"),
                        Container(
                            child: Column(
                          children: [Text("Unisex"), Icon(Icons.group)],
                        ))
                      ],
                    ),
                    Icon(Icons.share),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Icon(Icons.person),
                          Text("Room"),
                          Text("RS.7999/month")
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Icon(Icons.group),
                          Text("Twin-Sharing"),
                          Text("RS.4999/month")
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Icon(Icons.group_add),
                          Text("Multi-Sharing"),
                          Text("RS.2999/month")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Align(
                      child: Text("Ammeneties"),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      child: GridView.count(
                          crossAxisCount: 3,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          mainAxisSpacing: 1.0,
                          crossAxisSpacing: 50.0,
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.ac_unit,
                                    color: Colors.purple[900],
                                  ),
                                  Text("AC")
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wifi,
                                    color: Colors.purple[900],
                                  ),
                                  Text("WI-FI")
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.chrome_reader_mode,
                                    color: Colors.purple[900],
                                  ),
                                  Text("Fridge")
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.movie_creation,
                                    color: Colors.purple[900],
                                  ),
                                  Text("MicroOven")
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.camera_rear,
                                    color: Colors.purple[900],
                                  ),
                                  Text("R.O Water")
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.directions_car,
                                    color: Colors.purple[900],
                                  ),
                                  Text("Parking")
                                ],
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("About the House")),
                    Placeholder()
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Location")),
                    Placeholder()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
