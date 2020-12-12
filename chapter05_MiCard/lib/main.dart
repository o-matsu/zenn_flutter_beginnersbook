import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp()); // Statelessウィジェットの呼び出し
}

// Statelessウィジェットを定義
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("images/face.jpg"),
            ),
            Text(
              "O-matsu",
              style: TextStyle(
                fontFamily: "Pacifico",
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                fontFamily: "SourceSansPro",
                fontSize: 20.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal[50],
              ),
            ),
            SizedBox(
              height: 30.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 50,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  "+81 999 9999",
                  style: TextStyle(
                    fontFamily: "SourceSansPro",
                    fontSize: 20.0,
                    color: Colors.teal[900],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 50,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  "sample.mail@gmail.com",
                  style: TextStyle(
                    fontFamily: "SourceSansPro",
                    fontSize: 20.0,
                    color: Colors.teal[900],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
