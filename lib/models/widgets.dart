import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../constants/styles.dart';

Widget kGridCard(context, className) => Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.05,
          vertical: screenWidth(context) * 0.02),
      child: InkWell(
        onTap: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(className, style: kHeadingTextStyle(context)),
            SizedBox(
              width: screenWidth(context) * 0.01,
            ),
            const Icon(Icons.arrow_forward_outlined),
          ],
        ),
      ),
    );
