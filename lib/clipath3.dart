import 'package:flutter/material.dart';

class Clipath3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: MediaQuery.of(context).size.width*0.8,
          height: MediaQuery.of(context).size.height*0.6,
          decoration: BoxDecoration(
            color: Colors.red
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var rounded = 50.0;
    // TODO: implement getClip
    Path path = Path();
    path.moveTo(0, size.height*0.43);
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(0, size.height, rounded,size.height);

    path.lineTo(size.width-rounded, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width,size.height-rounded);
    path.lineTo(size.width,  rounded*2);
    path.quadraticBezierTo(size.width, 0, size.width-rounded *3, rounded*2);
    path.lineTo(rounded, size.height*0.40);
    path.quadraticBezierTo(0, size.height*0.38 + rounded, 0, size.height*0.43+rounded*2);


    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
