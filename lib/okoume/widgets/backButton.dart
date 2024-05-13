import 'package:flutter/material.dart';
import 'package:flutterdesign/okoume/Colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 7, top: 8),
      decoration: BoxDecoration(
        color: backButtonColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
