import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  final String txt;
  final String txt1;
  final String txt2;
  final String txt3;
  final String txt4;

  Contain(
      {required this.txt,
      required this.txt1,
      required this.txt2,
      required this.txt3,
      required this.txt4,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 20,),

          Container(
            width: 50,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.pinkAccent),
            child: Center(
                child: Text(
              txt,
              style: TextStyle(
                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
            )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white24),
            child: Center(
                child: Text(
              txt1,
              style: TextStyle(
                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
            )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white24),
            child: Center(
                child: Text(
              txt2,
              style: TextStyle(
                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
            )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white24),
            child: Center(
                child: Text(
              txt3,
              style: TextStyle(
                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
            )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white24),
            child: Center(
                child: Text(
              txt4,
              style: TextStyle(
                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
            )),
          ),
        ],
      ),
    );
  }
}
