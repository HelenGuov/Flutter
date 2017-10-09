import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
        padding: const EdgeInsets.all(32.0), //padding around
        child: new Row(
          children: [
            new Expanded(
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  new Text("Heading",
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new Text("subheading",
                      style: new TextStyle(color: Colors.grey[500])),
                ])),
            new Icon(Icons.star, color: Colors.red[500]),
          ],
        ));

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
          children: [
            new Icon(icon),
            new Container(
              margin: const EdgeInsets.only(top: 8.0),
            child: new Text(label,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            )))
          ]);
    }

    Widget buttonSection = new Container(
        child: new Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButtonColumn(Icons.call, 'CALL'),
              buildButtonColumn(Icons.directions, 'ROUTE'),
              buildButtonColumn(Icons.share, 'SHARE')
            ]));

    return new MaterialApp(
        title: 'Flutter App',
        home: new Scaffold(
            appBar: new AppBar(title: new Text("Flutter ")),
            body: new ListView(children: [
              titleSection,
              buttonSection
            ])));
  }
}
