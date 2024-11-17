import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicproject/Widgets/Homewidgests/Categorysection.dart';
import 'package:musicproject/Widgets/Homewidgests/Favoritesings.dart';
import 'package:musicproject/Widgets/Homewidgests/Header.dart';
import 'package:musicproject/Widgets/Homewidgests/Singers.dart';

import '../../Colors/colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Container(
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const Header(),
                  const SizedBox(height: 15),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: searchGradient,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: const [
                      SizedBox(height: 15),
                      Categorysection(),
                      SizedBox(height: 25),
                      Singers(),
                      SizedBox(height: 25),
                      Favoritesings(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}