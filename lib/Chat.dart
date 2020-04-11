import 'package:flutter/material.dart';
import 'package:homie/reuseable_search_widget.dart';

void main() => runApp(Chat());

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
            new Expanded(flex: 4, child: new Container(child: DummyList())),
          ],
        ));
  }
}

class DummyList extends StatelessWidget {
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
