import 'package:flutter/material.dart';
import '../database/SaveImageDemo.dart';

class ReportPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State<ReportPage> {

  StatefulWidget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report an Attack"),
      ),
      body: Center(
        child: RaisedButton(

          child: Text('Report an infestation'),

          onPressed:()
          {
            Navigator.push
              (
              context,
              MaterialPageRoute<Widget>(builder: (context) => SaveImageDemo()),
            );
          },
        ),
      ),
    );

  }}