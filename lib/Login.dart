import 'package:flutter/material.dart';
import 'choice.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        new Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 150.0),
              child: Container(
                child: Image.asset('assets/logo.png'),
              ),
            )),
        new Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Container(
                child: Column(
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new FlatButton(
                          textColor: Colors.purple[900],
                          child: new Text("Log In"),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple[900])),
                          onPressed: () => Navigator.push(context,new MaterialPageRoute(builder: (context)=> Choice()),)
                        ),
                        new FlatButton(
                          child: new Text("Sign up"),
                          onPressed: () => null,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple[900])),
                          textColor: Colors.purple[900],
                        ),
                      ],
                    ),
                    FlatButton(
                      onPressed: () => null,
                      child: Row(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ClipOval(child: Material(color: Colors.red,child:Icon(Icons.ac_unit,color: Colors.white,) ,),),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Sign in with Google"),
                          ),
                        ],
                      ),
                      color: Colors.red[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      textColor: Colors.white,
                    ),
                    FlatButton(
                      onPressed: () => null,
                      child: Row(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ClipOval(child: Material(color: Colors.blue[900],child:Icon(Icons.ac_unit,color: Colors.white,) ,),),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Sign in with Facebook"),
                          ),
                        ],
                      ),
                      color: Colors.lightBlue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
