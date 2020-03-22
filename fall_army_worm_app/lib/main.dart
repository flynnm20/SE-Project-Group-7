import 'package:flutter/material.dart';
import 'database/SaveImageDemo.dart';
import 'database/exisitingdb/ImageGetternsetter.dart';
import './pages/home.dart';
import './pages/Identify.dart';
import './pages/report.dart';
import './pages/prevent.dart';
import './pages/myinfo.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main()  {
  runApp(HomeApp());
}

class HomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
 /* Widget build(BuildContext context) {
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
  }*/
}

/*class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
*/
class MyAppState extends State<HomeApp> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  int _selectedTab = 0;
  final _pageOptions = [
    HomePage(),
    IDPage(),
    ReportPage(),
    PreventPage(),
    InfoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(

        body:  _pageOptions[_selectedTab],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black54,
          //selectedItemColor: Color(0xff2ac6),
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text('Identify'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.error),
              title: Text('Report'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.block),
              title: Text('Prevent'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              title: Text('My Info'),
            ),
          ],
        ),
      ),
    );
  }
}

/*class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

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
}*/


/*class IdentificationPage extends StatelessWidget {
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
}*/


/*class PreventionPage extends StatelessWidget {
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
}*/
/*class ReportPage extends StatelessWidget {
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
}*/

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
