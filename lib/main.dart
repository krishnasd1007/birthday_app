import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'Cake.dart';
import 'Music.dart';


void main() {
  runApp(Card());
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: MyBottomNav(),


    );
  }
}


class MyBottomNav extends StatefulWidget {
  @override
  _MyBottomNavState createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {

  int _ind = 0;

  final List<Widget> _children = [
    Cake(),
    Music(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _ind = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_ind],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: onTappedBar,
        items: <Widget>[
          Icon(Icons.cake, size: 30),
          Icon(Icons.music_note, size: 30),
        ],
        color: Colors.red,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.black,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
      )
    );
  }
}
