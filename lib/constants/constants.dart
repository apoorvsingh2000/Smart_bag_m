import 'package:flutter/material.dart';

BoxDecoration blueGradientBox = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff45b6fe),
      Color(0xff3792cb),
      Color(0xff45b6fe),
      Color(0xff3792cb),
      Color(0xff45b6fe),
    ],
  ),
);

BoxDecoration backgroundDecoration = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff45b6fe),
      Color(0xff3792cb),
      Color(0xff45b6fe),
      Color(0xff3792cb),
      Color(0xff45b6fe),
    ],
  ),
);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;