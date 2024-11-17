import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categorysection extends StatefulWidget {
  const Categorysection({super.key});

  @override
  State<Categorysection> createState() => _CategorysectionState();
}

class _CategorysectionState extends State<Categorysection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Made for you",
              style: TextStyle(fontFamily: "Poppins-SemiBold", fontSize: 20,color: Colors.white70),
            ),
            Text(
              "See all",
              style: TextStyle(
                  color: Colors.white70, fontFamily: "Poppins-Medium"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Horizontal List
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CategoryCard(
                imagePath: "assets/images/category1.png",
                title: "90s Hip Hop",
                description: "Relive the classic hits",
              ),
              CategoryCard(
                imagePath: "assets/images/category2.png",
                title: "Indonesian Pop",
                description: "Top Indonesian tracks",
              ),
              CategoryCard(
                imagePath: "assets/images/category3.jpg",
                title: "Rap tunisian",
                description: "Top Tunisian rap",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const CategoryCard({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                height: 100,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontFamily: "Poppins-Bold", fontSize: 14),
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  fontSize: 12,
                  color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
