import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bugData.dart';
import 'predbhelper.dart';

class imageHome extends StatefulWidget {

  imageHome() : super();

  final String title = "Get and display images and info from Database";

  @override
  _imageHome createState() => _imageHome();
}

class _imageHome extends State<imageHome>{
  List<bugData> buginfo;
  bugData curbug;
  DBHelper db;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter SQLite")),
      body: FutureBuilder<List<bugData>>(
        future: DBHelper.dataer.getinfo(),
        builder: (BuildContext context, AsyncSnapshot<List<bugData>> snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: new ListView(
                children: [
                  Center(child: Text(snapshot.data[0].imageID + " " + snapshot.data[0].imageDesc,),),
                  Image.asset('assets/images/Fall-armyworm-fawchart.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/images/fallarmyworm.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,),
                  Image.asset('assets/images/faw-adult.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,),
                  Image.asset('assets/images/faw-eggs.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,),
                  Image.asset('assets/images/faw-identify.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,),
                  Image.asset('assets/images/faw-infestation.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,),
                  Image.asset('assets/images/faw-infestation1.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,),
                  Image.asset('assets/images/faw-larvae.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,),
                  Image.asset('assets/images/faw-lifecycle.gif',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,),
                  Image.asset('assets/images/faw-pupa.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,),
                ],
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await DBHelper.dataer.getinfo();
          setState(() {});
        },
      ),
    );
  }
}


