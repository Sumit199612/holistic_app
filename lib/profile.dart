import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:holistic_app/prescription.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;
import 'package:holistic_app/datepicker.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  DateTime dateTime;
  var finaldate;

  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      finaldate = order;
    });
  }

  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: dateTime == null ? DateTime.now() : dateTime,
      firstDate: DateTime(2001),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            // SizedBox(height: 15,),
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 24),
            // margin: EdgeInsets.symmetric(horizontal: 1.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.orange, Colors.deepOrangeAccent],
            )),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipOval(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        child: SizedBox(
                          height: 40,
                          width: 50,
                          child: Icon(Icons.more_vert),
                        ),
                        onTap: () {
                          print('hello');
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/icon.png'),
                            radius: 50.0,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hi Sumit",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 3,
                            width: 150,
                            // width: MediaQuery.of(context).size.width * 0.4,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                LinearPercentIndicator(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  animation: true,
                                  lineHeight: 20.0,
                                  animationDuration: 2000,
                                  percent: 0.61,
                                  center: Text("61.0%"),
                                  linearStrokeCap: LinearStrokeCap.roundAll,
                                  progressColor: Colors.greenAccent,
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  // SizedBox(height: 10,),
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              child: SizedBox(
                                height: 40,
                                child: Icon(Icons.person),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Prescription()));
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.99,
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 2.0)),
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width * 0.96,
                  alignment: Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 2.0)),
                  child: Text(
                    'Ayurvedic Treatment - Treatment Detail',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width * 0.46,
                        alignment: Alignment(0.0, 0.0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black54, width: 2.0)),
                        child: RaisedButton(
                          child: finaldate == null
                              ? Text(
                                  "Start Date",
                                  textScaleFactor: 1.0,
                                )
                              : Text(
                                  "$finaldate",
                                  textScaleFactor: 1.0,
                                ),
                          onPressed: callDatePicker,
                        ),
                      ),
                      Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width * 0.46,
                        alignment: Alignment(0.0, 0.0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black54, width: 2.0)),
                        child: RaisedButton(
                          child: finaldate == null
                              ? Text(
                                  "End Date",
                                  textScaleFactor: 1.0,
                                )
                              : Text(
                                  "$finaldate",
                                  textScaleFactor: 1.0,
                                ),
                          onPressed: callDatePicker,
                        ),
                      ),
                      // DatePickerDemo(),
                      /*
                * Calendar
                * */
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
