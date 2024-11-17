import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicproject/Auth/Loginpage/Login.dart';
import 'package:musicproject/Auth/Registerpage/Register.dart';
import 'package:musicproject/Widgets/Welcomepage/Custom_scaffold.dart';
import 'package:musicproject/Widgets/Welcomepage/Welcomebutton.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(child: Container(
            child: Center(child: RichText(textAlign: TextAlign.center, text:TextSpan(
              children: [
                TextSpan(
                  text:  "welcome back !\n",style: TextStyle(
                  fontSize: 45,
                    color: CupertinoColors.white,
                  fontWeight: FontWeight.w600
              ),

              ),
                TextSpan(
                  text:  "\nEnter your personal details\n to get all ur best songs!\n",style: TextStyle(
                    fontSize: 20,
                  color: CupertinoColors.white

                ),

                )],

            ),
            ),),
          )),
          Flexible(flex:1,child: Align(
            alignment: Alignment.bottomRight,
            child: Row(children: [
              Expanded(child: Welcomebutton(buttontext: "sign in"
                ,onTap:Login() ,color: Colors.white,textColor: Colors.black,)),
              Expanded(child: Welcomebutton(buttontext: "sign up"
                ,onTap: Register(),
              color: Colors.transparent,textColor: Colors.white,))
            ],),
          ))
          
        ],
      ),
    );
  }
}
