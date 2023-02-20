import 'package:flutter/material.dart';
import 'package:smart_bag_m/constants/constants.dart';

import '../models/widgets.dart';

class ClassesScreen extends StatelessWidget {
  const ClassesScreen({Key? key}) : super(key: key);
  static const String id = 'classes_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: backgroundDecoration,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 200,
              ),
          children: [
            kGridCard(context, 'Class   6 A'),
            kGridCard(context, 'Class   6 B'),
            kGridCard(context, 'Class   6 C'),
            kGridCard(context, 'Class   7 A'),
            kGridCard(context, 'Class   7 B'),
            kGridCard(context, 'Class   7 C'),
            kGridCard(context, 'Class   8 A'),
            kGridCard(context, 'Class   8 B'),
            kGridCard(context, 'Class   8 C'),
          ],
        ));
  }
}
