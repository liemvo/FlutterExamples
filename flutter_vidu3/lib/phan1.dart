import 'package:flutter/material.dart';

class Phan1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Phan1> {
  final appTitle = "Ví dụ 3";

  String dropdownValue = 'Blue';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.orange),
        home: Scaffold(
            appBar: AppBar(
                title: Text(
              appTitle,
              style: TextStyle(color: Colors.white),
            )),
            body: Center(
                child: Column(
              children: <Widget>[
                FlatButton(
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  child: Text(
                    'Flat Button',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                )
                ,
                RaisedButton(
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  elevation: 16,
                  child: Text(
                    'Raised Button',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                ),
                DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(
                      Icons.arrow_downward,
                      color: Colors.deepOrangeAccent,
                    ),
                    iconSize: 36,
                    elevation: 8,
                    style: TextStyle(color: Colors.deepOrangeAccent),
                    underline: Container(
                      height: 2,
                      color: Colors.deepOrange,
                    ),
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value;
                      });
                    },
                    items: <String>['Blue', 'Red', 'Orange', 'Yellow', 'Green']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        child: Text(value),
                        value: value,
                      );
                    }).toList()),
              ],
            ))));
  }
}