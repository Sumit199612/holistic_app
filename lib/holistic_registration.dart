import 'package:flutter/material.dart';
import 'package:holistic_app/profile.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // int radioValue = 0;

    int radioItem = 0;

    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
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
                    "Enter the world of Rewards",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown.shade400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    "Complete your Registration",
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
                      labelText: "Name",
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
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black26,
                    decoration: InputDecoration(
                      labelText: "Email",
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 0,
                        groupValue: radioItem,
                        onChanged: (val) {
                          setState(() {
                            radioItem = val;
                          });
                        },
                      ),
                      Text('Male'),
                      Radio(
                          value: 1,
                          groupValue: radioItem,
                          onChanged: (val) {
                            setState(() {
                              radioItem = val;
                            });
                          }),
                      Text('Female'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
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
    ));
  }
}
