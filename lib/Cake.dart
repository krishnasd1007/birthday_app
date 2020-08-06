import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cake extends StatefulWidget {
  @override
  _CakeState createState() => _CakeState();
}

class _CakeState extends State<Cake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IT IS YOUR BIRTHDAY !!!'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'happy birthday',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.redAccent,
              ),
            ),
            Card(
              color: Colors.deepPurple,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                title: Text(
                  'happy birthday',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


