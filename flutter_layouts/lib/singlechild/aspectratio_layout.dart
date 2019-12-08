import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class AspectRatioLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AspectRatio(
          aspectRatio: 3.2,
          child: Container(
              color: Colors.blue[800],
              child: Center(child: Text('Hello'))),
        ),
      ),
    );
  }
}

