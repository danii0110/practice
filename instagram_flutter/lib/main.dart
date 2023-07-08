import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 1,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
          actionsIconTheme: IconThemeData(color: Colors.black),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.red),
        ),
      ),
      home: MyApp()));
}

var a = TextStyle();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
            iconSize: 30,
          )
        ],
      ),
      body: Text('안녕'),
    );
  }
}
