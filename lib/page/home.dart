// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SingleChildScrollView(
        child: new ConstrainedBox(
            constraints: new BoxConstraints(minHeight: 120.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: new BoxDecoration(color: Colors.white),
              child: Center(child: Text("Home Page")),
            )),
      ),
    );
  }
}
