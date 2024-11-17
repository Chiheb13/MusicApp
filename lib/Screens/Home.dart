import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicproject/Screens/Homescreen/Homescreen.dart';
import 'package:musicproject/Screens/Music/Music.dart';
import 'package:musicproject/Screens/Profile/Profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myindex=0;
  List<Widget> widgetlist=[
    Homescreen(),
    Profile(),
    Music(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetlist[myindex],
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.black87,
        onTap: (index){
          setState(() {
            myindex=index;

          });


        },
        currentIndex: myindex,
        selectedItemColor:Colors.white70,
        unselectedItemColor: Colors.grey[500],
        showUnselectedLabels: false,
        items:const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label:" home"),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label:" favorite"),
      BottomNavigationBarItem(icon: Icon(Icons.music_note),label:" music")
    ]),
    );
  }
}
