import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'AppBar',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow,
          toolbarHeight: 100,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              iconSize: 30.0,
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              iconSize: 30.0,
            ),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}
