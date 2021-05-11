import 'dart:convert';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Icard extends StatefulWidget {
  //
  String value;
  // Icard({Key key, @required this.value}) : super(key: key);
  Icard({this.value});
  @override
  _IcardState createState() => _IcardState(value);
}

class _IcardState extends State<Icard> {
//
  String value;
  _IcardState(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 10.0,
          centerTitle: true,
          title: Text("YOUR INFORMATION"),
        ),
        body: FutureBuilder(
          //load jsonfile
          future: DefaultAssetBundle.of(context).loadString("assets/data.json"),
          builder: (context, snapshot) {
            var mydata = jsonDecode(snapshot.data
                .toString()); // decoding json to mydata variable so as to access easily
            if (mydata == null) {
              return Center(
                child: Text("loading"),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    // backgroundImage: AssetImage("images/front.jpg"),
                    radius: 65.0,
                  ),
                  Divider(
                    height: 30.0,
                  ),
                  Text(
                    mydata[value]["name"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 190),
                    child: Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    value, //value==textfield ma lekhya i.e roll in json
                    style: TextStyle(
                      letterSpacing: 8.0,
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: Container(
                      padding: EdgeInsets.all(14.8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      height: 50.0,
                      // width: 200.0,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.phone_android, color: Colors.teal),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            mydata[value]["phone"],
                            style:
                                TextStyle(color: Colors.teal, fontSize: 16.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: Container(
                      padding: EdgeInsets.all(14.8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      height: 50.0,
                      // width: 200.0,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.alternate_email, color: Colors.teal),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            mydata[value]["email"],
                            style:
                                TextStyle(color: Colors.teal, fontSize: 16.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: Container(
                      padding: EdgeInsets.all(14.8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      height: 50.0,
                      // width: 200.0,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.message,
                            color: Colors.teal,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            mydata[value]["id"],
                            style:
                                TextStyle(color: Colors.teal, fontSize: 16.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ));
  }
}
