import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'Stateless',
          style: TextStyle(color: Colors.white),
        )),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Text('Toggle'),
              ),
              Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.purple,
              )
            ],
          ),
        ),
      ),
    );
  }
}
