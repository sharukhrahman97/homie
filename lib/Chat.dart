import 'package:flutter/material.dart';
import 'package:homie/reuseable_search_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() => runApp(Chat());

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String url = "https://randomuser.me/api/?results=15";
  List data;
  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractdata = json.decode(response.body);
      data = extractdata["results"];
    });
  }

  @override
  void initState() {
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //TODO: bottom padding resize error
        body: new Column(
      children: [
        new Expanded(
          flex: 1,
          child: SearchCard(),
        ),
        new Expanded(
            flex: 4,
            child: new Container(
                child: new Scaffold(
              body: new ListView.builder(
                  itemCount: data == null ? 0 : data.length,
                  itemBuilder: (BuildContext context, i) {
                    return new ListTile(
                      title: new Text(data[i]["name"]["first"]),
                      subtitle: new Text(data[i]["phone"]),
                      leading: new CircleAvatar(
                        backgroundImage:
                            new NetworkImage(data[i]["picture"]["thumbnail"]),
                      ),
                    );
                  }),
            ))),
      ],
    ));
  }
}

/* class DummyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: const EdgeInsets.all(4.0),
      itemBuilder: (context, i) {
        return new ListTile(
          title: new Text("Firstname Lastname"),
          subtitle:
              new Text('Available from Feb 02, 2020 \n Budget around 10k'),
          leading: const Icon(Icons.face),
        );
      },
    );
  }
}
 */
