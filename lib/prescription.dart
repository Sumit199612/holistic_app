import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Prescription extends StatefulWidget {
  @override
  _PrescriptionState createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                // borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text("Prescription", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
                    SizedBox(width: 200,),
                    Icon(Icons.notifications, color: Colors.orangeAccent, ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.notifications, color: Colors.orangeAccent, ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Prescription 1", style: TextStyle(fontSize: 20, color: Colors.grey,letterSpacing: 0.5),),
                    ),
                  ],
                ),
              ),

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.notifications, color: Colors.orangeAccent, ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Prescription 2", style: TextStyle(fontSize: 20, color: Colors.grey,letterSpacing: 0.5),),
                    ),
                  ],
                ),
              ),

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.notifications, color: Colors.orangeAccent, ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Prescription 3", style: TextStyle(fontSize: 20, color: Colors.grey,letterSpacing: 0.5),),
                    ),
                  ],
                ),
              ),

            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                // borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text("Food Plans", style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 0.5),),
                    SizedBox(width: 200,),
                    Icon(Icons.notifications, color: Colors.orangeAccent, ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.notifications, color: Colors.orangeAccent, ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Prescription 1", style: TextStyle(fontSize: 20, color: Colors.grey,letterSpacing: 0.5),),
                    ),
                  ],
                ),
              ),

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.notifications, color: Colors.orangeAccent, ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Prescription 2", style: TextStyle(fontSize: 20, color: Colors.grey,letterSpacing: 0.5),),
                    ),
                  ],
                ),
              ),

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.notifications, color: Colors.orangeAccent, ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Prescription 3", style: TextStyle(fontSize: 20, color: Colors.grey,letterSpacing: 0.5),),
                    ),
                  ],
                ),
              ),

            ),

          ],
        ),
      ),
    );
  }
}
