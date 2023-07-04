import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var total = 3;
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  addName() {
    setState(() {
      name.add('말숙');
    });
  }

  addOne() {
    setState(() {
      total++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(total.toString()),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.call),
            Icon(Icons.message),
            Icon(Icons.account_box),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (c, i) {
          return ListTile(
            leading: Image.asset(
                '/Users/dani/Desktop/dani/practice/contact/assets/camera.png'),
            title: Text(name[i]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return DiaglogUI(addOne: addOne, addName: addName);
            });
      }),
    );
  }
}

class DiaglogUI extends StatelessWidget {
  DiaglogUI({Key? key, this.addOne, this.addName}) : super(key: key);
  final addOne;
  final addName;
  var inputData = TextEditingController();
  var inputData2 = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                inputData2 = text;
              },
            ),
            TextButton(
                child: Text('완료'),
                onPressed: () {
                  addOne();
                  addName();
                }),
            TextButton(
              child: Text('취소'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
