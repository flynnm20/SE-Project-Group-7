import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:flutter/services.dart';

class TakePictureScreen extends StatefulWidget {
  final CameraDescription camera;
  const TakePictureScreen({
    Key key,
    @required this.camera,
  }) : super(key: key);

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  double scale = 1.0;
  CameraController _controller;
  Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.high,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double _getImageZoom(MediaQueryData data) {
      final double logicalWidth = data.size.width;
      final double logicalHeight = _controller.value.aspectRatio * logicalWidth *11;

      final EdgeInsets padding = data.padding;
      final double maxLogicalHeight =
          data.size.height - padding.top - padding.bottom;

      return maxLogicalHeight / logicalHeight;
    }
    return Scaffold(
      appBar: AppBar(title: Text('Take a picture'),backgroundColor: Colors.lightGreen,),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          var cameraPreview = new CameraPreview(_controller);
          if (snapshot.connectionState == ConnectionState.done) {
            return new GestureDetector(
                onScaleUpdate:(one){
                  print(one.scale);
                  if(one.scale >= 1) {
                    scale = one.scale;
                  }
                  setState(() {});
                },
              child: Transform.scale(
                scale: scale + _getImageZoom(MediaQuery.of(context)),
                child: Center(
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: cameraPreview,
                  ),
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () async {
          try {
            await _initializeControllerFuture;
            final path = join(
              (await getTemporaryDirectory()).path,
              '${DateTime.now()}.png',
            );
            await _controller.takePicture(path);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(imagePath: path),
              ),
            );
          } catch (e) {
            print(e);
          }
        },
      ),
    );
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key key, this.imagePath}) : super(key: key);
  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed:  () {Navigator.of(context).pop();},
    );
    Widget continueButton = FlatButton(
      child: Text("Yes"),
      onPressed:  (){
          GallerySaver.saveImage(imagePath);
          Navigator.of(context).pop();
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("Save Image?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightGreen,),
      body: PhotoView(

        imageProvider: Image.file(File(this.imagePath)).image,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed:  () async {
    try {
        showAlertDialog(context);

    }catch (e) {
      print(e);
    }
    }
        ),
      );
  }
}