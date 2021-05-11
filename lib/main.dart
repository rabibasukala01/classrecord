import 'package:records_student/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Class Info",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
//
  String value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 10.0,
          centerTitle: true,
          title: Text("Class Info"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Electronics And Communication Engineering",
                style: TextStyle(
                  fontSize: 19.1,
                ),
              ),
              Text(
                "{2076}\n",
                style: TextStyle(
                  fontSize: 20.5,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: (text) {
                    value = text;
                  },
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      fontSize: 21.5,
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Icon(Icons.dialpad),
                    ),
                    hintText: "Class Roll Number",
                    hintStyle: TextStyle(
                      fontSize: 18.5,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Icard(value: value)),
                  ); //passing value
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 60.0,
                  width: 220.0,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(
                    "Enter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                //overflow prevention
                child: Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Internet NOT Required!",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(Icons.copyright),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "2020",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
