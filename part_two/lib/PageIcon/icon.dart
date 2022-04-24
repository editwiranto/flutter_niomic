import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
            color: Colors.blue,
            child: Column(children: <Widget>[
              Icon(
                Icons.home,
                size: 60.0,
                color: Colors.white,
              ),
              Text("Selamat Datang Di FLutter",
                  style: TextStyle(color: Colors.white, fontSize: 40.0)),
              Padding(padding: EdgeInsets.all(5.0)),
              RaisedButton(
                child: Text("Hal 1"),
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
              )
            ])));
  }
}

class TextWellcome extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Text("Selamat Datang", style: TextStyle(color: Colors.blue)),
    );
  }
}
