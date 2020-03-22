import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'database/SaveImageDemo.dart';
import 'database/exisitingdb/ImageGetternsetter.dart';

void main() => runApp(new FallArmywormApp());

class FallArmywormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightGreen,
          accentColor: Colors.yellowAccent,
          fontFamily: 'Georgia',
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.amberAccent,
            shape: RoundedRectangleBorder(),
          )
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('    The Fall Armyworm App'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'Fall Armyworm Information',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => imageHome()),
            );
          }
        )
      ),/*
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                'Options Menu',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            ListTile(

              leading: Icon(Icons.assignment),
              title: Text('Identification'),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => imageHome()),
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
      ),*/
    );
  }*/
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("              Fall Armyworm App"),
        elevation: .1,
        backgroundColor: Color.fromRGBO(67, 110, 0, 1.0),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => imageHome()),
                );
            },
            child: makeDashboardItem("Information", Icons.info_outline),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IdentificationPage()),
                );
              },
              child: makeDashboardItem("Identification", Icons.search),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PreventionPage()),
                );
              },
              child: makeDashboardItem("Prevention", Icons.block),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportPage()),
                );
              },
              child: makeDashboardItem("Report", Icons.report),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPage()),
                );
              },
              child: makeDashboardItem("View Map", Icons.location_on),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraPage()),
                );
              },
              child: makeDashboardItem("Camera", Icons.camera_alt),
            ),
          ],
        ),
      ),
    );
  }
}
Card makeDashboardItem(String title, IconData icon) {
  return Card(
    elevation: 1.0,
    margin: new EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(color: Color.fromRGBO(10, 100, 0, 1.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          SizedBox(height: 50.0),
          Center(
            child: Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            )
          ),
          SizedBox(height: 20.0),
          new Center(
            child: new Text(title,
            style: new TextStyle(fontSize: 18.0, color: Colors.black)),
          )
        ],
      ),
    ),
  );
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

          onPressed:()
          {
            Navigator.push
              (
              context,
               MaterialPageRoute(builder: (context) => SaveImageDemo()),
            );
          },
        ),
      ),
    );
  }
}

class MapPage extends StatelessWidget {

  Widget build(BuildContext context) {
    //Run the map
  }
}

class CameraPage extends StatelessWidget {

  Widget build(BuildContext context) {
    //Run the camera
  }
}