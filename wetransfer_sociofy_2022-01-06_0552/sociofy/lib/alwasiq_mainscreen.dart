import 'package:flutter/material.dart';
import 'package:new_ui/OFW.dart';
import 'package:new_ui/OFW_mapscreen.dart';
import 'package:new_ui/alwasiq_map.dart';
import 'package:new_ui/company-selected.dart';
import 'package:new_ui/company_selected.dart';
import 'package:new_ui/mapscreen.dart';
import 'package:new_ui/main.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class alwasiq_mainscreen extends StatelessWidget {
  const alwasiq_mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 85,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("images/logos-01.png"),
                  )),
                  child: Text(""),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                ListTile(
                  title: Text("Home"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Select1(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text("Leaves"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Talk"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("To Do"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Task"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Attendence"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Calendar"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('')),
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Image.asset("images/Group 106.png"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: Container(
              child: Center(
                child: Text(
                  "",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => alwasiq_mapscreen(),
                      //   ),
                      // );
                    },
                    child: SizedBox(
                      width: 120,
                      child: Image.asset("images/Group 109.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                    child: FlatButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Mapscreen(),
                        //   ),
                        // );
                      },
                      child: SizedBox(
                        width: 120,
                        child: Image.asset("images/Group 110.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Mapscreen(),
                      //   ),
                      // );
                    },
                    child: SizedBox(
                      width: 120,
                      child: Image.asset("images/Group 111.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 20),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mapscreen(),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 120,
                        child: Image.asset("images/Group 112.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                    child: FlatButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Mapscreen(),
                        //   ),
                        // );
                      },
                      child: SizedBox(
                        width: 120,
                        child: Image.asset("images/Group 113.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                    child: FlatButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => Mapscreen(),
                        //   ),
                        // );
                      },
                      child: SizedBox(
                        width: 120,
                        child: Image.asset("images/Group 114.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => Mapscreen(),
          //       ),
          //     );
          //   },
          //   child: Padding(
          //     padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
          //     child: Container(
          //       child: Row(
          //         children: [Image.asset("images/New Project.png")],
          //       ),
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => Mapscreen(),
          //       ),
          //     );
          //   },
          //   child: Padding(
          //     padding: EdgeInsets.fromLTRB(270, 0, 0, 0),
          //     child: Container(
          //       child: Row(
          //         children: [Image.asset("images/New Project (2).png")],
          //       ),
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }
}
