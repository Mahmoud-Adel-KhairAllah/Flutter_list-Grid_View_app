import 'package:flutter/material.dart';
import 'package:test_app/Page2.dart';

import 'Page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: GridViewLucture());
  }
}

class ListViewLucture extends StatelessWidget {
  List<String> users = [
    'ali',
    'ahmed',
    'aseel',
    'asmaa',
    'alaa',
    'mosa',
    'mahmoud',
    'arafat',
    'ziad',
    'adel',
    'bader',
    'saleh',
    'ali',
    'ahmed',
    'aseel',
    'asmaa',
    'alaa',
    'mosa',
    'mahmoud',
    'arafat',
    'ziad',
    'adel',
    'bader',
    'saleh'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              child:
                  Text('____________________________________________________'),
            );
          },
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(users[index]),
              textColor: Colors.green,
              tileColor: Colors.yellow,
              trailing: Icon(Icons.supervised_user_circle),
            );
          },
        ),
      ),
    );
  }
}

class GridViewLucture extends StatelessWidget {
  List<String> users = [
    'ali',
    'ahmed',
    'aseel',
    'asmaa',
    'alaa',
    'mosa',
    'mahmoud',
    'arafat',
    'ziad',
    'adel',
    'bader',
    'saleh',
    'ali',
    'ahmed',
    'aseel',
    'asmaa',
    'alaa',
    'mosa',
    'mahmoud',
    'arafat',
    'ziad',
    'adel',
    'bader',
    'saleh'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: Container(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      users[index],
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                );
              })),
    );
  }
}
