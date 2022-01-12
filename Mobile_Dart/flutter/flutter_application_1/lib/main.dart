import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Prova"),
        ),
        body: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 100,
                child: RaisedButton(
                  child: Text("Button 1"),
                  onPressed: () {},
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                width: 100,
                child: RaisedButton(
                  child: Text("Button 2"),
                  onPressed: () {},
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: 100,
                child: RaisedButton(
                  child: Text("Button 3"),
                  onPressed: () {},
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
