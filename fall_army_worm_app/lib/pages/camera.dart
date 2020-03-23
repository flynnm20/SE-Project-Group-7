import 'package:fallarmywormapp/main.dart';
import 'package:flutter/material.dart';
import '../database/SaveImageDemo.dart';
import '../database/exisitingdb/ImageGetternsetter.dart';
import 'package:fallarmywormapp/appCamera/cameraFile.dart';
class CameraPage extends StatefulWidget {
  var cameras;
  CameraPage(this.cameras);

  @override
  State<StatefulWidget> createState() {
    return CameraPageState();
  }


}


class CameraPageState extends State<CameraPage> {
  //IdentificationPage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body:TakePictureScreen(camera: cameras.first,),
    );
  }
}