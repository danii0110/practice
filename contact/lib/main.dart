import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
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
          itemCount: 3,
          itemBuilder: (c, i) {
            return ListTile(
                leading: Text(like[i].toString()),
                title: Text(name[i]),
                trailing: ElevatedButton(
                  child: Text('좋아요'),
                  onPressed: () {
                    setState(() {
                      like[i]++;
                    });
                  },
                ));
          },
        ),
      ),
    );
  }
}

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(Icons.account_circle), Text('홍길동')],
    );
  }
}
