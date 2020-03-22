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
}
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
              icon: Icon(Icons.home,
              color: Colors.lightGreen),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera,
                  color: Colors.lightGreen),
              title: Text('Identify'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.error,
                  color: Colors.lightGreen),
              title: Text('Report'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.block,
                  color: Colors.lightGreen),
              title: Text('Prevent'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline,
                  color: Colors.lightGreen),
              title: Text('My Info'),
            ),
          ],
        ),
      ),
    );
  }
}
