import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicproject/Widgets/Homewidgests/Categorysection.dart';

class Favoritesings extends StatefulWidget {
  const Favoritesings({super.key});

  @override
  State<Favoritesings> createState() => _FavoritesingsState();
}

class _FavoritesingsState extends State<Favoritesings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Favorite songs",
              style: TextStyle(fontFamily: "Poppins-SemiBold", fontSize: 20,color: Colors.white70),
            ),
            Text(
              "See all",
              style: TextStyle(
                  fontFamily: "Poppins-Medium",color: Colors.white70),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CategoryCard(
                imagePath: "assets/images/category3.jpg",
                title: "Song 1",
                description: "Artist 1",
              ),
              CategoryCard(
                imagePath: "assets/images/category4.jpg",
                title: "Song 2",
                description: "Artist 2",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
