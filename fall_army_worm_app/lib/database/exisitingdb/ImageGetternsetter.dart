import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imageHome extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('View and add Images'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: new ListView(
          children: [
            Image.asset('assets/images/Fall-armyworm-fawchart.jpg',
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
      ),
    );
  }
}