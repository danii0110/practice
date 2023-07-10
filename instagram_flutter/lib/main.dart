import 'package:flutter/material.dart';
import './style.dart' as style;

void main() {
  runApp(MaterialApp(theme: style.theme, home: MyApp()));
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
      body: Text(
        '안녕',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
