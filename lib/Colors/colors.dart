import 'dart:ui';

import 'package:flutter/cupertino.dart';

const Color HomeColor = Color.fromRGBO(238, 242, 242, 1.0);
const Color Bottomnavigationbackground = Color.fromRGBO(235, 244, 245, 1.0);
const Color Searchcolor=Color.fromRGBO(54, 54, 54, 1.0);
const LinearGradient searchGradient = LinearGradient(
  colors: [
    Color(0xFF000000), // Noir
    Color(0xFF444444), // Gris foncé
  ],
  begin: Alignment.centerLeft, // Début du dégradé
  end: Alignment.centerRight, // Fin du dégradé
);