import 'package:flutter/material.dart';
import 'package:smart_bag_m/constants/constants.dart';

BoxDecoration textContainerDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(4.0),
);

EdgeInsets kListMargin(context) => EdgeInsets.only(
      top: screenWidth(context) * 0.05,
      left: screenWidth(context) * 0.05,
      right: screenWidth(context) * 0.05,
    );

TextStyle kHeadingTextStyle(context) => TextStyle(fontSize: screenWidth(context)*0.01, fontWeight: FontWeight.bold);
