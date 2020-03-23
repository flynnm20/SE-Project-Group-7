import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State<InfoPage> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(

        body: Text('Name:'
            'Location'
            'ID Number'
        ),

      ),
    );
  }}