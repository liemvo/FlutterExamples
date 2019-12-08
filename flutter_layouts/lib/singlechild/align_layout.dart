import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class AlignLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: 120,
          height: 120,
          color: Colors.blue[800],
          child: Align(
            alignment: Alignment.topLeft,
            // alignment: Alignmnet(0.2, 0.8),
            // alignment: FractionalOffset(0.2, 0.8),
            child: Icon(Icons.map, color: Colors.red, size: 60)
          ),
        ),
      ),
    );
  }
}
