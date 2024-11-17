import 'package:flutter/material.dart';
import 'package:musicproject/Widgets/Homewidgests/SearchBar.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Greeting Text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning, Desta!",
                  style: TextStyle(fontFamily: "Poppins-SemiBold", fontSize: 20,color: Colors.white70),
                ),
              ],
            ),
            // Icons
            Row(
              children: [
                Icon(Icons.notifications, color: Colors.grey.shade200),
                const SizedBox(width: 15),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey.shade200,
                  child: Icon(Icons.person, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Searchbar(),
      ],
    );
  }
}
