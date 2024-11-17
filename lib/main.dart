import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicproject/Auth/Welcome.dart';
import 'Screens/Home.dart';
 // Import your Home page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
