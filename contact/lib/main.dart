import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '금호동3가',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            Icon(
              Icons.notifications_none,
              color: Colors.black,
            )
          ],
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(
                '/Users/dani/Desktop/dani/practice/contact/assets/images/camera.png',
                width: 150,
                height: 150,
              ),
              Container(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('카메라팝니다.'),
                    Text('금호동 3가'),
                    Text('7000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.favorite), Text('4')],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
