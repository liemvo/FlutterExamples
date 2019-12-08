import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class BaseLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.green,
            child: Baseline(
                baseline: 0.3,
                baselineType: TextBaseline.alphabetic,
                child: Text('Hello world', style: TextStyle(color: Colors.blue),)
                ),
          ),
        ),
      ),
    );
  }
}
