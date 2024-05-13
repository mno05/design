import 'package:flutter/material.dart';
import 'package:flutterdesign/okoume/Colors.dart';
import 'package:flutterdesign/okoume/Sizes.dart';
import 'package:flutterdesign/okoume/TextStyle.dart';
import 'package:flutterdesign/okoume/screens/paiement.dart';
import 'package:flutterdesign/okoume/widgets/backButton.dart';
import 'package:get/get.dart';

class Abonnement extends StatelessWidget {
  const Abonnement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Abonnement",
          style: appBarTextStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Abonnement",
              style: TextStyle(
                  fontSize: textSize * .6,
                  fontWeight: FontWeight.w600,
                  color: primaryColor),
            ),
            Text(
              "Sélectionner un plan",
              style: TextStyle(
                fontSize: textSize * .35,
                color: grayTextColor,
              ),
            ),
            SizedBox(
              height: verticalDistance * .1,
            ),
            _abonnementPost(
              title: "PREMIUM",
              amount: "\$ 50000 / Mois",
              buttonColor: primaryColor,
              colorBorder: bgAbonnementContainerBoreder,
              bgColor: bgAbonnementContainer,
            ),
            _abonnementPost(
              title: "SILVER",
              amount: "\$ 100000 / Mois",
              colorBorder: const Color(0xFFCFCFCF),
              bgColor: const Color(0xFFF4F4F4),
              buttonColor: primaryColor,
            ),
            _abonnementPost(
              title: "BASIC",
              amount: "\$ 1000 / Mois",
              buttonColor: primaryColor,
              colorBorder: const Color(0xFFCFCFCF),
              bgColor: const Color(0xFFF4F4F4),
            ),
          ],
        ),
      ),
    );
  }

  _abonnementPost({
    required String title,
    required String amount,
    required Color bgColor,
    required Color colorBorder,
    required Color buttonColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            // color: bgAbonnementContainerBoreder,
            color: colorBorder,
          ),
          // color: bgAbonnementContainer,
          color: bgColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: textSize * .35,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              // "\$ 50000 / Mois",
              amount,
              style: TextStyle(
                color: grayTextColor,
                fontSize: textSize * .35,
              ),
            ),
            SizedBox(
              height: verticalDistance * .3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fonctionnalités avancées",
                      style: TextStyle(
                        color: grayTextColor,
                        fontSize: textSize * .3,
                      ),
                    ),
                    Text(
                      "24/7 support",
                      style: TextStyle(
                        color: grayTextColor,
                        fontSize: textSize * .3,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => const Paiement());
                  },
                  child: Text(
                    "Acheter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    ),
                    // padding: MaterialStatePropertyAll(
                    //   EdgeInsets.only(left: 140, right: 140, top: 20, bottom: 20),
                    // ),
                    elevation: MaterialStatePropertyAll(0.0),
                    backgroundColor: MaterialStatePropertyAll(buttonColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
