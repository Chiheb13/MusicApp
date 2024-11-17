import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:musicproject/Auth/Registerpage/Register.dart';

class Welcomebutton extends StatefulWidget {
  const Welcomebutton({super.key, this.buttontext, this.onTap, this.color, this.textColor});
  final String ?buttontext;
  final Widget? onTap;
  final Color?color;
  final Color ? textColor;

  @override
  State<Welcomebutton> createState() => _WelcomebuttonState();
}

class _WelcomebuttonState extends State<Welcomebutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Get.to(widget.onTap!);
      } ,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color:widget.color,
          borderRadius: BorderRadius.only
            (topLeft: Radius.circular(50)),
        ),
        child: Text(widget.buttontext!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold,
          color: widget.textColor
        ),),
      ),
    );
  }
}
