import 'package:flutter/material.dart';

class ShowBottom extends StatefulWidget {
  @override
  _ShowBottomState createState() => _ShowBottomState();
}

class _ShowBottomState extends State<ShowBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //   left:0.0,
       // right: 0.0,
       // bottom: 0.0,
        body:Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 16.0,
                spreadRadius: 0.5,
                offset: Offset(0.7,0.7)
              )
            ]
          ),

    ),

    );
  }
}
