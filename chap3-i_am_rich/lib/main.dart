import 'package:flutter/material.dart';

// the main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://images-na.ssl-images-amazon.com/images/I/71X792rclDL.png'),
          ),
        ),
      ),
    ),
  );
}
