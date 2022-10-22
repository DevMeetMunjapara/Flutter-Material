import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_material/additem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedindex = 0;
  void _navigateBottombar(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    addItem(),
    addItem(),
    addItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'AppBar',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[400],
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
        drawer: Drawer(
          child: Container(
            color: Colors.deepPurple[100],
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                    child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('img/meet.jpg'),
                      radius: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Meet Munjapara\n@meet_munjapara',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ],
                )),
                ListTile(
                  onTap: () {
                    print('Profile');
                  },
                  contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  leading: Icon(
                    Icons.account_circle,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                ListTile(
                  onTap: () {
                    print('Setting');
                  },
                  contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  leading: Icon(
                    Icons.settings,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Setting',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: _pages[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: _navigateBottombar,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.deepPurple,
            elevation: 30,
            backgroundColor: Colors.white60,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add Item"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_rounded), label: "Shopping"),
            ]),
      ),
    );
  }
}
