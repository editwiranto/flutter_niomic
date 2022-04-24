import 'package:flutter/material.dart';

class NumberScreen extends StatefulWidget {
  String title;
  
  NumberScreen({ Key? key,required this.title}) : super(key: key);

@override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  int number = 0;
  String ValueText = "";
  @override
  String _Nama = "Masukkan Nama: ";
  void Nama(String _value) {
    setState(() {
      this._Nama = _value;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.title)),
      body:Container(
      color: Colors.blue,
      child: Column(children: <Widget>[
        Text(this.number.toString(),
            style: TextStyle(fontSize: 20.0, color: Colors.red)),
        RaisedButton(
            child: Text("Tambah"),
            onPressed: () {
              setState(() {
                this.number += 1;
              });
            }),
        RaisedButton(
            child: Text("Kurang"),
            onPressed: () {
              setState(() {
                this.number -= 1;
              });
            }),
        RaisedButton(
            onPressed: () {
              setState(() {
                Nama("Edit");
              });
            },
            child: Text("Nama: ")),
        Text(this._Nama),
        TextField(
          decoration:InputDecoration(
            hintText:"Username"
          ),
          onChanged: (String value){
            setState(() {
              this.ValueText = value;
            });
          },
        ),
        Text(this.ValueText)
      ]),
    )
    );
  }
}