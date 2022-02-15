import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:new_ui/main.dart';

class alwasiq_signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<alwasiq_signup> {
  // String attachment;

  final _recipientController = TextEditingController(
    text: 'asadyousuf759@gmail.com',
  );
  final _nameController = TextEditingController(text: '');
  final _contactController = TextEditingController(text: '');
  final _designationController = TextEditingController(text: '');
  final _workinghoursController = TextEditingController(text: '');

  final _subjectController =
      TextEditingController(text: 'User Registration Form');

  final _bodyController = TextEditingController(text: "");
  var text;
  var email;
  var contact;
  var designation;
  var workingHours;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> send() async {
    final Email email = Email(
      // text: _nameController.text,
      recipients: [_recipientController.text],
      // contact: _contactController.text,
      // designation: _designationController.text,
      // workignhours: _workinghoursController,
      subject: _subjectController.text,
      // body: _bodyController.text,
      // attachmentPath: attachment,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    _scaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(platformResponse),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final Widget imagePath = Text('');

    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ),
                  );
                },
              )
            ],
            title: Center(
              child: Text(''),
            ),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.blue)),

        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Center(
                      child: Image.asset("images/Group 107.png"),
                    ),
                  ),
                  Container(
                    width: 500,
                    decoration: new BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: -10,
                          blurRadius: 10,
                          offset:
                              Offset(0.0, -25.0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 20, 0, 10),
                          child: Container(
                            child: SizedBox(
                              width: 150,
                              child: Image.asset("images/logos-01.png"),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Container(
                        child: TextField(
                            controller: _nameController,
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Name",
                              prefixIcon: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Icon(Icons.person,
                                    size: 20.0, color: Colors.black),
                              ),
                            ))),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: TextField(
                      // controller: _recipientController,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.email,
                              size: 20.0, color: Colors.black),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: TextField(
                      controller: _contactController,
                      onChanged: (value) {
                        contact = value;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // errorText: _validate ? 'Username Can\'t Be Empty' : null,
                        prefixIcon: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Icon(Icons.phone,
                              size: 20.0, color: Colors.black),
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        labelText: "Contact",
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Container(
                      child: TextField(
                        controller: _designationController,
                        onChanged: (value) {
                          designation = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Icon(Icons.person,
                                size: 20.0, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Designation',
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Container(
                      child: TextField(
                        controller: _workinghoursController,
                        onChanged: (value) {
                          workingHours = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Icon(Icons.lock_clock,
                                size: 20.0, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Working Hours',
                        ),
                      ),
                    ),
                  ),

                  // Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: TextField(
                  //     controller: _subjectController,
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       labelText: 'Subject',
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: TextField(
                  //     controller: _bodyController,
                  //     maxLines: 10,
                  //     decoration: InputDecoration(
                  //         labelText: 'Body', border: OutlineInputBorder()),
                  //   ),
                  // ),

                  SizedBox(
                    width: 200,
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff0070DF), Color(0xff2C2B77)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 300.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   icon: Icon(Icons.camera),
        //   label: Text('Add Image'),
        //   onPressed: _openImagePicker,
        // ),
      ),
    );
  }
}
