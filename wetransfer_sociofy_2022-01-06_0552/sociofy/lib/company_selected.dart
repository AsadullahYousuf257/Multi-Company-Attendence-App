import 'package:flutter/material.dart';
import 'package:new_ui/OFW.dart';
import 'package:new_ui/al-wasiq.dart';
import 'package:new_ui/main.dart';
import 'package:new_ui/splash.dart';

class Select1 extends StatefulWidget {
  const Select1({Key? key}) : super(key: key);
  // void main() {
  //   MaterialApp(
  //     home: Splash(),
  //   );
  // }

  @override
  _SelectState createState() => _SelectState();
}

class _SelectState extends State<Select1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, contraints) {
            if (contraints.maxWidth < 768) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 375,
                    height: 700,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/Mask-Group-1.png"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: Center(
                      child: Text(
                        "Select Your Company",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: ListView(
                        children: [
                          InkWell(
                            child: Image.asset("images/Group 79.png"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                ),
                              );
                            },
                          ),
                          InkWell(
                            child: Image.asset("images/Group 82.png"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlWasiq(),
                                ),
                              );
                            },
                          ),
                          InkWell(
                            child: Image.asset("images/Group 83.png"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OFW(),
                                ),
                              );
                            },
                          ),
                          Center(
                            child: Text(
                              "© Powered by Sociofy",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          /*InkWell(
                  child: SizedBox(
                    width: 400,
                    height: 350,
                    child: Image.asset("images/Group 79.png"),
                  ),
                ),
                InkWell(
                  child: SizedBox(
                    width: 400,
                    height: 350,
                    child: Image.asset("images/Group 79.png"),
                  ),
                )*/
                        ],
                        shrinkWrap: true,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 375,
                    height: 700,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/Mask-Group-1.png"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: Center(
                      child: Text(
                        "Select Your Company",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: ListView(
                        children: [
                          InkWell(
                            child: Image.asset("images/Group 79.png"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                ),
                              );
                            },
                          ),
                          InkWell(
                            child: Image.asset("images/Group 82.png"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AlWasiq(),
                                ),
                              );
                            },
                          ),
                          InkWell(
                            child: Image.asset("images/Group 83.png"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OFW(),
                                ),
                              );
                            },
                          ),
                          Center(
                            child: Text(
                              "© Powered by Sociofy",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          /*InkWell(
                  child: SizedBox(
                    width: 400,
                    height: 350,
                    child: Image.asset("images/Group 79.png"),
                  ),
                ),
                InkWell(
                  child: SizedBox(
                    width: 400,
                    height: 350,
                    child: Image.asset("images/Group 79.png"),
                  ),
                )*/
                        ],
                        shrinkWrap: true,
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
