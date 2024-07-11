import 'package:flutter/material.dart';
class category extends StatelessWidget {
  category({this.text,this.color,this.onTap });
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 60,
        width: double.infinity,
        child: Text(text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),),
        color:color,
      ),
    );
  }
}