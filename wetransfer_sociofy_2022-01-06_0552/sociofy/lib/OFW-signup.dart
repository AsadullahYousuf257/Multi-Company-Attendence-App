// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:new_ui/mapscreen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:http/http.dart' as http;
//
// class signup extends StatefulWidget {
//   const signup({Key? key}) : super(key: key);
//
//   //  String email;
//   // String password;
//   // Future<void> main() async {
//   //   WidgetsFlutterBinding.ensureInitialized();
//   //   await Firebase.initializeApp();
//   // }
//
//   @override
//   State<signup> createState() => _signupState();
// }
//
// final controllerTo = TextEditingController();
// final controlleremail = TextEditingController();
// final controllercontact = TextEditingController();
// final controllerworkinghours = TextEditingController();
// final controllerdesignation = TextEditingController();
//
// // final _auth = FirebaseAuth.instance;
// var text;
// var email;
// var password;
// var contact;
// var designation;
// var workingHours;
//
// class _signupState extends State<signup> {
//   // late String valueChoose;
//   // List listitem = [
//   //   "Graphic Designer",
//   //   "Front-End Developer",
//   //   "Digital Marketer"
//   // ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Center(
//           child: Text("User Register Form"),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // buildTextField(tittle: 'To', controller: controllerTo),
//             // buildTextField(tittle: 'Email', controller: controlleremail),
//             // buildTextField(tittle: 'Contact', controller: controllercontact),
//             // buildTextField(tittle: 'Working Hours', controller: controllerworkinghours),
//             // buildTextField(tittle: 'Designation', controller: controllerdesignation),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
//               child: Container(
//                   // child: Image.asset("images/logo.png"),
//                   ),
//             ),
//
//             Container(
//               child: Center(
//                 child: Text(
//                   "Apply With Your Current Active Email",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//               child: Container(
//                 child: TextField(
//                   controller: controllerTo,
//                   onChanged: (value) {
//                     text = value;
//                   },
//                   decoration: InputDecoration(
//                     prefixIcon: Padding(
//                       padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                       child:
//                           Icon(Icons.person, size: 20.0, color: Colors.black),
//                     ),
//                     border: OutlineInputBorder(),
//                     labelText: ' Name',
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//               child: Container(
//                 child: TextField(
//                   controller: controlleremail,
//                   onChanged: (value) {
//                     email = value;
//                   },
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     prefixIcon: Padding(
//                       padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                       child: Icon(Icons.email, size: 20.0, color: Colors.black),
//                     ),
//                     border: OutlineInputBorder(),
//                     labelText: 'Enter Your Active Email ',
//                   ),
//                 ),
//               ),
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//             //   child: Container(
//             //     child: TextField(
//             //       onChanged: (value) {
//             //         password = value;
//             //       },
//             //       obscureText: true,
//             //       decoration: InputDecoration(
//             //         prefixIcon: Padding(
//             //           padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//             //           child: Icon(Icons.lock, size: 20.0, color: Colors.black),
//             //         ),
//             //         border: OutlineInputBorder(),
//             //         labelText: ' Password',
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             // Padding(
//             //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//             //   child: Container(
//             //     child: TextField(
//             //       obscureText: true,
//             //       decoration: InputDecoration(
//             //         prefixIcon: Padding(
//             //           padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//             //           child: Icon(Icons.lock, size: 20.0, color: Colors.black),
//             //         ),
//             //         border: OutlineInputBorder(),
//             //         labelText: 'Confirm Password',
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//               child: TextField(
//                 controller: controllercontact,
//                 onChanged: (value) {
//                   contact = value;
//                 },
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   // errorText: _validate ? 'Username Can\'t Be Empty' : null,
//                   prefixIcon: Padding(
//                     padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                     child: Icon(Icons.phone, size: 20.0, color: Colors.black),
//                   ),
//                   border: OutlineInputBorder(),
//                   enabledBorder: OutlineInputBorder(),
//                   hintText: "Contact",
//                 ),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//               child: Container(
//                 child: TextField(
//                   controller: controllerdesignation,
//                   onChanged: (value) {
//                     designation = value;
//                   },
//                   decoration: InputDecoration(
//                     prefixIcon: Padding(
//                       padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                       child:
//                           Icon(Icons.person, size: 20.0, color: Colors.black),
//                     ),
//                     border: OutlineInputBorder(),
//                     labelText: 'Designation',
//                   ),
//                 ),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//               child: Container(
//                 child: TextField(
//                   controller: controllerworkinghours,
//                   onChanged: (value) {
//                     workingHours = value;
//                   },
//                   decoration: InputDecoration(
//                     prefixIcon: Padding(
//                       padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                       child: Icon(Icons.lock_clock,
//                           size: 20.0, color: Colors.black),
//                     ),
//                     border: OutlineInputBorder(),
//                     labelText: 'Working Hours',
//                   ),
//                 ),
//               ),
//             ),
//
//             // Padding(
//             //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//             //   child: Container(
//             //     child: TextField(
//             //       decoration: InputDecoration(
//             //         prefixIcon: Padding(
//             //           padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//             //           child: Icon(Icons.calendar_view_day,
//             //               size: 20.0, color: Colors.black),
//             //         ),
//             //         border: OutlineInputBorder(),
//             //         labelText: 'Date Of Birth',
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             Container(
//                 child: Row(
//               children: <Widget>[
//                 // Text('Does not have account?'),
//                 Container(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: RaisedButton(
//                       color: Colors.black,
//                       textColor: Colors.white,
//                       child: Text(
//                         'Submit',
//                         style: TextStyle(fontSize: 20, color: Colors.white),
//                       ),
//                       onPressed: () {},
//                       // onPressed: () async {
//                       //   try {
//                       //     final newUser =
//                       //         await _auth.createUserWithEmailAndPassword(
//                       //             email: email, password: password);
//                       //     if (newUser != null) {
//                       //       Navigator.push(
//                       //         context,
//                       //         MaterialPageRoute(
//                       //           builder: (context) => const Mapscreen(),
//                       //         ),
//                       //       );
//                       //     }
//                       //   } catch (e) {
//                       //     print(e);
//                       //   }
//                       //   print(text);
//                       //   print(email);
//                       //   print(contact);
//                       //   print(workingHours);
//                       //   print(designation);
//                       // },
//                     ),
//                   ),
//                   width: 200,
//                   height: 80,
//                 )
//               ],
//               mainAxisAlignment: MainAxisAlignment.center,
//             ))
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Future sendEmail({
//   //   required String name,
//   //   required String email,
//   //   required int contact,
//   //   required int workinghours,
//   //   required String designation,
//   // }) async {
//   //   final serviceId = 'service_heouqmk';
//   //   final templateId = 'template_zumwu77';
//   //   final userId = 'user_b2gUGSuoDcs5w2j2laEQc';
//   //   final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
//   //   final response = await http.post(
//   //     url,
//   //     headers: {
//   //       'Content-Type': 'application/json',
//   //     },
//   //     body: json.encode({
//   //       'service_id': serviceId,
//   //       'template_id': templateId,
//   //       'user_id': userId,
//   //       'template_params': {
//   //         'user_name': name,
//   //         'user_email': email,
//   //         'user_contact': contact,
//   //         'user_workinghours': workinghours,
//   //         'user_designation': designation,
//   //       }
//   //     }),
//   //   );
//   //   print(response.body);
//   // }
//   //
//   // Widget buildTextField({
//   //   required String tittle,
//   //   required TextEditingController controller,
//   //   int maxlines = 1,
//   // }
//   //     )
//
// // @override
// // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
// //   super.debugFillProperties(properties);
// //   properties.add(StringProperty('valueChoose', valueChoose));
//
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:new_ui/main.dart';

void main() => MaterialApp(home: signup(), debugShowCheckedModeBanner: false);

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
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
            child: Text('User Registration Form'),
          ),
          backgroundColor: Colors.black,
        ),

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
                    padding: EdgeInsets.all(20),
                    child: Center(child: Image.asset("images/Group 102.jpg")),
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
                                  colors: [
                                    Color(0xff000000),
                                    Color(0xff484543)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(30.0)),
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
