import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/MediaQuery.dart';
import 'package:flutterdesign/okoume/Colors.dart';
import 'package:flutterdesign/okoume/Sizes.dart';
import 'package:flutterdesign/okoume/TextStyle.dart';
import 'package:flutterdesign/okoume/widgets/CustumButton.dart';
import 'package:flutterdesign/okoume/widgets/backButton.dart';
import 'package:dotted_border/dotted_border.dart';

class Creation extends StatelessWidget {
  const Creation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Création",
          style: appBarTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            _inputTitle(),
            _actions(text: "Lieu"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _actions(text: "Heure debut", width: horizontalDistance * 2.22),
                _actions(text: "Heure fin", width: horizontalDistance * 2.22),
              ],
            ),
            _actions(text: "Date de l'évenement"),
            SizedBox(
              height: verticalDistance * .1,
            ),
            _description(),
            SizedBox(
              height: verticalDistance * .2,
            ),
            const CustumButton(text: "Créer")
          ],
        ),
      ),
    );
  }

  _inputTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: grayBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Titre",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  _actions({
    required text,
    width,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width ?? double.maxFinite,
        decoration: BoxDecoration(
          color: grayBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ListTile(
          title: Text(
            text,
            // "Méthodes de paiement",
            style: TextStyle(
              color: grayTextColor,
              fontSize: 18,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_down_sharp,
            size: textSize * .6,
            color: grayTextColor,
          ),
        ),
      ),
    );
  }

  _description() {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      // child: Container(
      //   padding: const EdgeInsets.all(8.0),
      //   decoration: BoxDecoration(color: grayBackground),
      //   child:
      child: DottedBorder(
        dashPattern: [10, 4],
        radius: Radius.circular(30),
        color: Colors.black,
        strokeWidth: 1,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: grayBackground,
          child: const TextField(
            maxLines: 10, //or null
            decoration: InputDecoration.collapsed(
                hintText: "Description de l'évenement"),
          ),
        ),
      ),
    );
  }
}
