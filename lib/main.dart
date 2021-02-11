
import 'dart:ffi';

import 'package:bottomnavybar/clipath2.dart';
import 'package:flutter/material.dart';

import 'clipath3.dart';
import 'clipath3.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Clipath3()
      ),
    );
  }
}

class MyClipper1 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path =Path();

    path.lineTo(0, size.height-100);
    path.quadraticBezierTo(size.width/4, size.height-200, size.width/2, size.height-100);
    path.quadraticBezierTo(size.width-(size.width/4), size.height, size.width, size.height-100);
    //print(size.width-(size.width/4));
    path.lineTo(size.width, 0);
    path.close();
    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }

}
