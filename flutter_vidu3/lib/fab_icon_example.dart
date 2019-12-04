
import 'package:flutter/material.dart';

class FABIcon extends StatelessWidget {
  final appTitle = "Ví dụ 3";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.orange),
        home: Scaffold(
          appBar: AppBar(
            title: Text(appTitle
            ,style: TextStyle(color: Colors.white),)
          ),
          body: Center(
            child: Text('Hello Viet Flutter Devs')
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {

            },
            child: Icon(Icons.share),
            backgroundColor: Colors.orange,
          ),
        )
    );
  }
}