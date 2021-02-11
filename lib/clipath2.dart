import 'package:flutter/material.dart';

class Clipath2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              child:
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Expanded(child: SizedBox()),
                      Text("Login To You Account"),
                      SizedBox(height: 30.0,)
                    ],
                  )
              )
          ),
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red
              ),
              child: Center(
                child: Text("sekutttt",style: TextStyle(fontSize: 20.0),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path =Path();

    path.lineTo(0, size.height-150);
    path.quadraticBezierTo(10, size.height-80, size.width/5, size.height-80);
    // path.quadraticBezierTo(size.width-(size.width/4), size.height, size.width, size.height-100);
    //print(size.width-(size.width/4));
    path.lineTo(size.width-80, size.height-80);
    path.quadraticBezierTo(size.width, size.height-80, size.width, size.height);

    path.lineTo(size.width, 0);
    path.close();
    // path.lineTo(0,0);
    // path.quadraticBezierTo(50, 50, 100, 0);
    // path.lineTo(size.width, 0);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, 0);

    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }

}

