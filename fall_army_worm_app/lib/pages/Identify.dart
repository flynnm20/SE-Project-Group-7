import 'package:fallarmywormapp/main.dart';
import 'package:flutter/material.dart';
import '../database/SaveImageDemo.dart';
import '../database/exisitingdb/ImageGetternsetter.dart';
import 'package:fallarmywormapp/appCamera/cameraFile.dart';
class IDPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return IdentificationPage();
  }
}
//
//
//class IdentificationPage extends State<IDPage> {
//  //IdentificationPage({Key key}) : super(key: key);
//
//  Widget build(BuildContext context) {
//  return imageHome()
//  ;
//  }
//}
//
//class PreventPage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return MyAppState();
//  }
//}

class IdentificationPage extends State<IDPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Prevention Information"),
          backgroundColor: Colors.lightGreen,
        ),

        body: Container(
            padding : EdgeInsets.all(15),
            child: ListView(
              children: <Widget>[
                Text("How to detect a Fallarmy Worm",
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                  textAlign: TextAlign.center,
                ),
                Text("\n" "\n""Name",
                    style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                    textAlign : TextAlign.center),
                Text(
                "The term 'armyworm' can refer to several species, often describing the large-scale invasive behavior of the species' larval stage." + "\n" +
                "It is regarded as a pest and can damage and destroy a wide variety of crops, which causes large economic damage." + "\n" +
                "Its scientific name derives from frugiperda, which is Latin for lost fruit, named because of the species' ability to destroy crops." + "\n" ),
                Image.asset('assets/images/faw-identify.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,),

                Text("Description and Distinct Features" + "\n" ,
                    style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                    textAlign : TextAlign.center),
                Text(
                  "The adult moths are 32 to 40 mm wing tip to wing tip, with a brown or gray forewing, and a white hind wing." + "\n" +
                "There is slight sexual dimorphism, with males having more patterns and a distinct white spot on each of their forewings." + "\n" +
                "The first larval instar is light colored with a larger dark head." + "\n" +
                "As they develop through instars, they become browner with white lengthwise lines." + "\n" +
                "They also develop dark spots with spines." + "\n" + "\n" + "\n"
                  ),
                Image.asset('assets/images/Fall-armyworm-fawchart.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,),

                Text("Signs of an Attack" + "\n",
                    style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                    textAlign : TextAlign.center),
                Text(
                    "Young caterpillars (1-3 instar stage) feed on leaves and cause window pane-like damage, initially appearing to only “scratch” the leaf." "\n" "\n"
                        "As caterpillars grow, they feed on large amounts of leaf tissue causing large ragged and elongated holes on leaves, leading to a shredded appearance." "\n" "\n"
                        "The caterpillars  can also feed on tassels and ears." "\n" "\n"
                        "Caterpillars produce a lot of frass (excreta) as they feed and grow." "\n"
                        "Stage 1-3 instar produce powder-like substance," "\n"
                        "stage 4-5 instars produce sawdust-like substance and stage 6" "\n"
                        "instar produces granular (pellet-like) substance" "\n"),
                Image.asset('assets/images/faw-infestation.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,),
              ],

            )
        )
    );
  }
}

