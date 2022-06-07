import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  String title;
  Page1(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Mahmoud')),
      body: Center(
          child: Container(
        //  color: Colors.red,
        // constraints: BoxConstraints(maxHeight: 10, maxWidth: 20),
        // width: double.infinity,
        //height: double.infinity,
        //alignment: Alignment.center,
        // padding: EdgeInsets.all(20),
        // margin: EdgeInsets.all(50),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            // color: Colors.black,
            //    border: Border.all(color: Colors.yellow),
            boxShadow: [
              BoxShadow(
                  color: Colors.cyan, offset: Offset(1, 1), blurRadius: 10)
            ]),
        child: Text(
          "hello Mahmoud",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      )),
    );
  }
}
