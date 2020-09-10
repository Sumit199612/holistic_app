import 'package:flutter/material.dart';
import 'package:holistic_app/otp.dart';

class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        // height: size.height,
        // width: size.width,
        color: Colors.white,
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                Container(
                  child: Image(
                    image: AssetImage('assets/images/icon.png'),
                  ),
                ),
                Container(
                  child: Text(
                    "HOLISTIC HEAHING \n MEDICAL CENTRE",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade400,
                        letterSpacing: 0.5),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade400),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    "Enter your mobile number to start",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown.shade400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  child: Text(
                    "earning your reward",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown.shade400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50.0,
                  width: size.width * 0.90,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black26,
                    decoration: InputDecoration(
                      labelText: "Enter Mobile Number",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50.0,
                  width: size.width * 0.90,
                  child: RaisedButton(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AfterNumber()));
                    },
                    elevation: 0.0,
                    color: Colors.orange.shade500,
                    splashColor: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
