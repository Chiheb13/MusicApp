import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:musicproject/Auth/Registerpage/Register.dart';
import 'package:musicproject/Screens/Homescreen/Homescreen.dart';
import 'package:musicproject/Widgets/Welcomepage/Custom_scaffold.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formSigninkey=GlobalKey<FormState>();
  bool rememberme=true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(flex :1,child: SizedBox(
            height: 10,
          )),
          Expanded(flex:7
              ,child: Container(
                padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
              )

            ),child: SingleChildScrollView(
              child: Form(
              key: _formSigninkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Welcome back",style: TextStyle(
                  color: Colors.blue,
                  fontSize: 35,
              
                ),),
                const SizedBox(height: 25,),
                TextFormField(validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter your email";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: Text("email"),
                  hintText:"Enter your email",
                  hintStyle: TextStyle(
                    color: Colors.black26,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(
                    color: Colors.black12,
                  ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                      borderRadius: BorderRadius.circular(10)
                  )
                ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter your email";
                  }
                  return null;
                },
                  decoration: InputDecoration(
                      label: Text("password"),
                      hintText:"Enter your password",
                      hintStyle: TextStyle(
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide(
                        color: Colors.black12,
                      ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: rememberme,
                            onChanged: (bool?value){
                          setState(() {
                            rememberme=value!;
                          });
                            },
                          activeColor: Colors.blue,
              
                        ),
                        Text("Remember me",style:
                          TextStyle(
                            color: Colors.blue
                          ),)
                      ],
                    ),
                    GestureDetector(
                      child: Text("Forget password ?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                ),
                const SizedBox(height: 25,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Get.to(Homescreen());
                  }, child: Text("sign in")),
                ),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    Expanded(child: Divider(
                    )),
                    const Padding(padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 10
                    ),child: Text("sign up with",
                      style: TextStyle(
                      color: Colors.black45
                    ),),),
                    Expanded(child: Divider(
                    )),
                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/images/facebook.png", width: 30),
                    Image.asset("assets/images/google.png", width: 30),
                    Image.asset("assets/images/apple.png", width: 30),
                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account ? ",style: TextStyle(
                      color: Colors.black45
                    ),),
                    InkWell(
                      onTap: (){
                        Get.to(
                            Register()
                        );
                      },
                      child: Text(" Sign in",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),),
                    )
                  ],
                )
              ],
                )),
            ),
          ))
        ],
      ),
    );
  }
}
