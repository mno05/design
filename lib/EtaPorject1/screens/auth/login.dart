import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/style.dart';
import 'package:flutterdesign/EtaPorject1/screens/auth/register.dart';
import 'package:flutterdesign/EtaPorject1/widgets/CustumButton.dart';
import 'package:flutterdesign/EtaPorject1/widgets/CustumTfd.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginEtaP1 extends StatelessWidget {
  const LoginEtaP1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Connexion",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text("Connectez vous pour continuer"),
            SizedBox(height: 20),
            CustumTfd(
              text: "E-mail",
              isEMail: true,
            ),
            CustumTfd(
              text: "Mot de passe",
              isPassword: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Mot de passe oublié",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            CustumBtn(
              text: "Connexion",
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nouveau?",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            TextButton(
              child: Text(
                "S'enregistrer",
                style: TextStyle(fontSize: 18, color: defaultColor),
              ),
              onPressed: () {
                Get.to(() => RegistrerEtaP1());
              },
            ),
          ],
        ),
      ),
    );
  }
}
