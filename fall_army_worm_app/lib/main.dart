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
      home:  MyApp(),
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

