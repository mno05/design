import 'package:flutter/material.dart';
import 'package:flutterdesign/okoume/Colors.dart';

class CustumButton extends StatelessWidget {
  final String text;

  const CustumButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Tia action yo moko (:
        // Get.to(() => const Paiement());
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(
          Size.fromWidth(double.maxFinite),
        ),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 20),
        ),
        elevation: MaterialStatePropertyAll(0.0),
        backgroundColor: MaterialStatePropertyAll(primaryColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
