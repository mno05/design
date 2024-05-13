import 'package:flutter/material.dart';
import 'package:flutterdesign/okoume/Colors.dart';
import 'package:flutterdesign/okoume/Sizes.dart';
import 'package:flutterdesign/okoume/TextStyle.dart';
import 'package:flutterdesign/okoume/imagesPath.dart';
import 'package:flutterdesign/okoume/widgets/backButton.dart';

class Paiement extends StatelessWidget {
  const Paiement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Paiements",
          style: appBarTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            _headPayement(),
            SizedBox(
              height: verticalDistance * .2,
            ),
            _methodes(),
            _frais(),
            _commande(),
          ],
        ),
      ),
    );
  }

  _frais() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: grayTextColor,
          width: .5,
        ),
      ),
      child: Row(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "\$ Frais",
                style: TextStyle(
                  fontSize: textSize * .38,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Il y a des frais supplémentaires pour cette transaction",
                style:
                    TextStyle(fontSize: textSize * .25, color: grayTextColor),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _commande() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 28),
      decoration: BoxDecoration(
        color: bgAbonnementContainer,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: bgAbonnementContainerBoreder,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Commande",
            style: TextStyle(
              fontSize: textSize * .30,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "\$ 80000",
            style: TextStyle(
              fontSize: textSize * .30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  _methodes() {
    return Column(
      children: [
        Text(
          "Séléctionner la méthode de paiement",
          style: TextStyle(
            fontSize: textSize * .38,
          ),
        ),
        _selectMethod(
          img: logoMpesa,
          isChek: true,
        ),
        _selectMethod(
          img: logoOrange,
          isChek: false,
        ),
        _selectMethod(
          img: logoAirtel,
          isChek: false,
        ),
      ],
    );
  }

  _selectMethod({
    required String img,
    required bool isChek,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: grayTextColor,
          width: .5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(img),
          Checkbox(
            value: isChek,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }

  _headPayement() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: verticalDistance * .1,
                horizontal: horizontalDistance * .7),
            decoration: BoxDecoration(
                color: bgAbonnementContainer,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Column(
              children: [
                Icon(
                  Icons.payment,
                  size: textSize * .6,
                  color: grayTextColor,
                ),
                Text(
                  "Paiements",
                  style: TextStyle(
                    color: grayTextColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: verticalDistance * .1,
                horizontal: horizontalDistance * .7),
            decoration: BoxDecoration(
                color: grayBackground,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: textSize * .6,
                  color: grayTextColor,
                ),
                Text(
                  "Complete",
                  style: TextStyle(
                    color: grayTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
