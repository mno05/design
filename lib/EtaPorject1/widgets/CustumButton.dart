import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/style.dart';

class CustumBtn extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustumBtn({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        maxLines: 1,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.only(left: 140, right: 140, top: 20, bottom: 20),
          ),
          elevation: MaterialStatePropertyAll(0.0),
          backgroundColor: MaterialStatePropertyAll(defaultColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ))),
    );
  }
}
