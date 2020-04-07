import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart'; //For creating the SMTP Server
import '../database/SaveImageDemo.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ReportPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReportPageState();
  }
}

class ReportPageState extends State<ReportPage> {
  String _name;
  String _email;
  String _ID;
  String _location;
  String _phoneNumber;
  String _description;
 //image stuff
  Future<File> imageFile;

  chooseImage() {
    setState(() {
      imageFile = ImagePicker.pickImage(source: ImageSource.gallery);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if(snapshot.connectionState == ConnectionState.done && null != snapshot.data) {
          return Image.file(
              snapshot.data,
              width: 300,
              height: 300,
          );
        }
        else if (null != snapshot.error) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red),
          );
        }
        else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red),
          );
        }
      },
    );
  }

  sendMessage() async {
    String username = "fallarmywormsetest@gmail.com";
    String password = "setest123";
    final smtpServer = gmail(username, password);
    // Creating the Gmail server

    // Create our email message.
    final message = Message()
      ..from = Address(username)
      ..recipients.add('fallarmywormsetest@gmail.com') //recipent email
      //..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com']) //cc Recipents emails
      //..bccRecipients.add(Address('bccAddress@example.com')) //bcc Recipents emails
      ..subject ='Report has been made at ${DateTime.now()}' //subject of the email
      ..attachments.add(FileAttachment(await imageFile))
      ..text = 'Name:= ' + _name + '\n'
                +'email:=' + _email + '\n'
                +'ID:='  + _ID + '\n'
                +'Location:=' + _location + '\n'
                +'Phone Number:=' + _phoneNumber + '\n'
                +'Description:='  + _description; //body of the email

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' +
          sendReport.toString()); //print if the email is sent
       final confrimMessage = Message()
      ..from = Address(username)
      ..recipients.add(_email) //recipent email
      //..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com']) //cc Recipents emails
      //..bccRecipients.add(Address('bccAddress@example.com')) //bcc Recipents emails
      ..subject = 'Confirmation: Report has been made at ${DateTime.now()}' //subject of the email
      ..text = 'The following information has been reported.\n'
                    +'Name:= ' + _name + '\n'
                    +'email:=' + _email + '\n'
                    +'ID:='  + _ID + '\n'
                    +'Location:=' + _location + '\n'
                    +'Phone Number:=' + _phoneNumber + '\n'
                    +'Description:='  + _description //body of the email
                    +'\n Thank You for your assistance \n'
                    +'Trócaire Fall-Army Worm team'; //body of the email
      try {
        final sendReport = await send(confrimMessage, smtpServer);
      print('Message sent: ' +
          sendReport.toString()); //print if the email is sent
      } on MailerException catch (e) {
      print('Message not sent. \n' +
          e.toString()); //print if the email is not sent
      // e.toString() will show why the email is not sending
      }
    } on MailerException catch (e) {
      print('Message not sent. \n' +
          e.toString()); //print if the email is not sent
      // e.toString() will show why the email is not sending
    }
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is required';
        }
        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildID() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Farmer ID'),
      maxLength: 7,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Farmer ID is required';
        }
        return null;
      },
      onSaved: (String value) {
        _ID = value;
      },
    );
  }

  Widget _buildLocation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Location'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Location is required';
        }
        return null;
      },
      onSaved: (String value) {
        _location = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is required';
        }
        return null;
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

  Widget _buildDescriptionBox() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Describe what you have identified and are reporting'),
      keyboardType: TextInputType.multiline,
      maxLines: 10,
      onSaved: (String value) {
        _description = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Report an Infestation"),
          backgroundColor: Colors.lightGreen,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildID(),
                  _buildName(),
                  _buildEmail(),
                  _buildPhoneNumber(),
                  _buildLocation(),
                  _buildDescriptionBox(),
                  SizedBox(height: 50),
                  showImage(),
                  OutlineButton(
                    onPressed: chooseImage,
                    child: Text('Attach Image'),
                  ),
                  SizedBox(height: 50),
                  RaisedButton(
                    color: Colors.lightGreen,
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }

                      _formKey.currentState.save();

                      print(_name);
                      print(_email);
                      print(_phoneNumber);
                      print(_ID);
                      print(_location);

                      //Send to API
                      sendMessage();
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

