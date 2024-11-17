import 'package:flutter/material.dart';
import 'package:musicproject/Colors/colors.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F7), // Light gray background color
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.black87, // Darker icon for better contrast
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(
            "Search by music",
            style: TextStyle(
              color: Colors.black54, // Matching text color with icon
              fontFamily: "Poppins-Medium",
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}