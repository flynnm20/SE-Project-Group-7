import 'package:flutter/material.dart';
import 'database/SaveImageDemo.dart';
import 'database/exisitingdb/ImageGetternsetter.dart';
void main() => runApp(HomeApp());

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: imageHome(),
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fallarmy Worm'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Identification'),
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Prevention'),
            ),
            ListTile(
              leading: Icon(Icons.hot_tub),
              title: Text('Report infestation'),
            ),
          ],
        ),
      ),
    );
  }
}

