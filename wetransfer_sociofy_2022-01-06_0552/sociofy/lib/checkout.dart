import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MaterialApp(
      // title: "Tutorial",
      home: checkout(),
    ));
final fourHoursFromNow = DateTime.now();

class checkout extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        // title: Text("Dropdown Button"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/Thank You screen.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 40, 30, 40),
                    child: Column(
                      children: [
                        Image.asset("images/Group 116(1).png"),
                        Text(
                          DateFormat("yyyy-MM-dd hh:mm:ss")
                              .format(DateTime.now()),
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
