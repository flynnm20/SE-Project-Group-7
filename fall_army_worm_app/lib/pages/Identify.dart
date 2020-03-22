import 'package:flutter/material.dart';
import '../database/SaveImageDemo.dart';
import '../database/exisitingdb/ImageGetternsetter.dart';

class IDPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IdentificationPage();
  }
}


class IdentificationPage extends State<IDPage> {
  //IdentificationPage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body:
        imageHome()

    );
  }
}
