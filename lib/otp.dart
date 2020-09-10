import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:holistic_app/holistic_registration.dart';

class AfterNumber extends StatefulWidget {
  @override
  _AfterNumberState createState() => _AfterNumberState();
}

class _AfterNumberState extends State<AfterNumber> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.2,
              ),
              Text(
                "Enter 6-digit OTP received on your registered mobile number.",
                style: TextStyle(color: Colors.orangeAccent, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Text(
                'Enter OTP ',
                style: TextStyle(color: Colors.orangeAccent, fontSize: 25),
              ),
              Center(
                child: OTPTextField(
                  length: 5,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 50,
                  fieldStyle: FieldStyle.underline,
                  style: TextStyle(fontSize: 17),
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
              ),
              SizedBox(
                height: 40,
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
                            builder: (context) => Registration()));
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
    );
  }
}
