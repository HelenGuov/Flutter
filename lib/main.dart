import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
        padding: const EdgeInsets.all(32.0),  //padding around
        child: new Row(
          children: [
            new Expanded(
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text("Heading", style: new TextStyle(fontWeight: FontWeight.bold)),
                      new Text("subheading", style: new TextStyle(color: Colors.grey[500])),
                    ]
                )),
            new Icon(Icons.star, color: Colors.red[500]),
          ],
        )
    );
    return new MaterialApp(
        title: 'Flutter App',
        home: new Scaffold(
            appBar: new AppBar(title: new Text("Flutter ")),
            body: new ListView(
                children: [
                  titleSection,
                ]
            )
        )

    );
  }

}
