import 'package:flutter/material.dart';
import 'package:flutterdesign/okoume/Colors.dart';
import 'package:flutterdesign/okoume/TextStyle.dart';
import 'package:flutterdesign/okoume/widgets/backButton.dart';

class Langues extends StatelessWidget {
  const Langues({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Langues",
          style: appBarTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _langueContainer(
              langue: "Français",
              isChek: true,
            ),
            _langueContainer(
              langue: "Anglais",
              isChek: false,
            ),
          ],
        ),
      ),
    );
  }

  _langueContainer({
    required String langue,
    required bool isChek,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: grayBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            langue,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Checkbox(
            value: isChek,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
