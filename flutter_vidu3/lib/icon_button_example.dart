
import 'package:flutter/material.dart';

class IconButtonApp extends StatelessWidget {
  final appTitle = "Ví dụ 3";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.orange),
        home: Scaffold(
          appBar: AppBar(
            title: Text(appTitle
            ,style: TextStyle(color: Colors.white),),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.share),
                color: Colors.white,
                onPressed: () {},
              )
            ],
          ),
          body: Center(
            child: IconButton(
              icon: Icon(Icons.account_balance), 
              color: Colors.orange,
              onPressed: () {},
              )
          )
        )
    );
  }
}