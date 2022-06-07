import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Page1.dart';

class Page2 extends StatefulWidget {
  String title;
  Page2(this.title);
  @override
  State<Page2> createState() {
    // TODO: implement createState
    return Page1State();
  }
}

class Page1State extends State<Page2> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("mahmoud")),
        body: Center(
            child: Center(
          child: Container(
              color: Colors.yellow,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 20),
                  ),
                  TextField(onChanged: ((value) {
                    // widget.title = controller.text;
                    //  setState(() {});
                  })),
                  RaisedButton(
                    child: Text("Prees"),
                    onPressed: () {
                      widget.title = controller.text;
                      controller.clear();
                      setState(() {});
                    },
                  )
                ],
              )),
        )));
  }
}
