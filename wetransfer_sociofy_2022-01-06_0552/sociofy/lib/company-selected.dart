import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_ui/OFW.dart';
import 'package:new_ui/al-wasiq.dart';
import 'package:new_ui/main.dart';
import 'package:new_ui/signup.dart';
import 'package:new_ui/splash.dart';
import 'package:new_ui/test.dart';

class Select extends StatelessWidget {
  const Select({Key? key}) : super(key: key);
  void main() {
    MaterialApp(
      home: Splash(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Center(child: Text('Select Your Company')),
      // ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
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
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 60, 10, 20),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Positioned(
                    // left: 50,
                    // top: 5,
                    child: SizedBox(
                      width: 400,
                      height: 350,
                      child: Image.asset("images/Group 79.png"),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlWasiq(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Positioned(
                      // left: 10,
                      child: SizedBox(
                        width: 400,
                        height: 700,
                        child: Image.asset("images/Group 82.png"),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OFW(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 1, 20, 0),
                    child: Positioned(
                      // left: 10,
                      child: SizedBox(
                        width: 400,
                        height: 1050,
                        child: Image.asset("images/Group 83.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1200,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 140, 0, 30),
                      child: Center(
                        child: Text(
                          "© Powered by Sociofy",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
