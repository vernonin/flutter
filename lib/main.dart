import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello flutter",
      home: Scaffold(
        appBar: AppBar(title: Text("APP TITLE")),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "hello flutter!",
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 30, color: Colors.pink),
      ),
    );
  }
}