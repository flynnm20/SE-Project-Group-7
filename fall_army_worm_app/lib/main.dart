import 'package:flutter/material.dart';
import 'database/SaveImageDemo.dart';
void main() => runApp(HomeApp());

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          children: <Widget>[
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
              onTap: ()
              {
              Navigator.push
                (
                context,
                MaterialPageRoute(builder: (context) => IdentificationPage()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Prevention'),
              onTap: ()
              {
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => PreventionPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.hot_tub),
              title: Text('Report infestation'),
              onTap: ()
              {
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => ReportPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
class IdentificationPage extends StatelessWidget {
  IdentificationPage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Identification Information"),
      ),
      body: Center(
      ),
    );
  }
}
class PreventionPage extends StatelessWidget {
  PreventionPage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prevention Information"),
      ),
      body: Center(
      ),
    );
  }
}
class ReportPage extends StatelessWidget {
  ReportPage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report an Attack"),
      ),
      body: Center(
        child: RaisedButton(

          child: Text('Report an infestation'),
        ),
      ),
    );
  }
}

