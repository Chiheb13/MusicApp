import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicproject/Widgets/Homewidgests/Categorysection.dart';

class Singers extends StatefulWidget {
  const Singers({super.key});

  @override
  State<Singers> createState() => _SingersState();
}

class _SingersState extends State<Singers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular singers",
              style: TextStyle(fontFamily: "Poppins-SemiBold", fontSize: 20,color: Colors.white70),
            ),
            Text(
              "See all",
              style: TextStyle(
                  color: Colors.white70, fontFamily: "Poppins-Medium"),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CircleAvatar(
              radius: 35,
              backgroundImage: const AssetImage("assets/images/singer7.jpg"),
            ),

            CircleAvatar(radius: 35,
                backgroundImage: const AssetImage("assets/images/singer4.jpg")),
            CircleAvatar(radius: 35,
                backgroundImage: const AssetImage("assets/images/singer5.jpg")),
            CircleAvatar(radius: 35,
                backgroundImage: const AssetImage("assets/images/singer6.jpg")),
          ],
        ),
      ],
    );
  }
}
