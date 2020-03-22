import 'package:fallarmywormapp/main.dart';
import 'package:flutter/material.dart';
import '../database/SaveImageDemo.dart';
import '../database/exisitingdb/ImageGetternsetter.dart';
import 'package:fallarmywormapp/appCamera/cameraFile.dart';
class IDPage extends StatefulWidget {
  var cameras;
  IDPage(this.cameras);
  
  @override
  State<StatefulWidget> createState() {
    return IdentificationPage();
  }


}


class IdentificationPage extends State<IDPage> {
  //IdentificationPage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body:TakePictureScreen(camera: cameras.first,),
    );
  }
}