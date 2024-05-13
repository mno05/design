import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/MediaQuery.dart';
import 'package:flutterdesign/okoume/Colors.dart';
import 'package:flutterdesign/okoume/Sizes.dart';
import 'package:flutterdesign/okoume/TextStyle.dart';
import 'package:flutterdesign/okoume/imagesPath.dart';
import 'package:flutterdesign/okoume/widgets/CustumButton.dart';
import 'package:flutterdesign/okoume/widgets/backButton.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Profile",
          style: appBarTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            _header(context),
            SizedBox(height: verticalDistance * .2),
            _actions(
              icon: Icons.payment_outlined,
              text: "Méthodes de paiement",
            ),
            _actions(
              icon: Icons.flash_on,
              text: "Abonnements",
            ),
            _actions(
              icon: Icons.notifications_active,
              text: "Notifications",
            ),
            _actions(
              icon: Icons.language,
              text: "Langue",
            ),
            _actions(
              icon: Icons.settings,
              text: "Paramètre",
            ),
            _actions(
              icon: Icons.info,
              text: "Support et Terms",
            ),
            SizedBox(
              height: verticalDistance * .4,
            ),
            const CustumButton(text: "Se déconnecter"),
          ],
        ),
      ),
    );
  }

  _header(context) {
    return Row(
      children: [
        Container(
          height: screenSize(context).height * .14,
          width: screenSize(context).width * .3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image:
                DecorationImage(image: AssetImage(profile), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: horizontalDistance * .3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "David SHANDU",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: textSize * .4,
              ),
            ),
            Text(
              "david@shandu.com",
              style: TextStyle(
                color: grayTextColor,
                fontSize: textSize * .3,
              ),
            ),
          ],
        ),
      ],
    );
  }

  _actions({
    required icon,
    required text,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: grayBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            size: textSize * .6,
            color: grayTextColor,
          ),
          title: Text(
            text,
            // "Méthodes de paiement",
            style: TextStyle(
              color: grayTextColor,
              fontSize: 18,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: grayTextColor,
          ),
        ),
      ),
    );
  }

  custumbutton({required text}) {}
}
