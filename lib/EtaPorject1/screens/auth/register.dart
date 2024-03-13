import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/style.dart';
import 'package:flutterdesign/EtaPorject1/widgets/CustumButton.dart';
import 'package:flutterdesign/EtaPorject1/widgets/CustumDrop.dart';
import 'package:flutterdesign/EtaPorject1/widgets/CustumTfd.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrerEtaP1 extends StatelessWidget {
  const RegistrerEtaP1({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enregisrement",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(" veuillez remplir les infos pour continuer"),
                SizedBox(height: 20),
                CustumTfd(
                  text: "Prenom",
                  isEMail: true,
                ),
                CustumTfd(
                  text: "Nom",
                  isEMail: true,
                ),
                CustumTfd(
                  text: "E-mail",
                  isEMail: true,
                ),
                Row(
                  children: [
                    CustumDrop(),
                    CustumDrop(),
                  ],
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
                CustumBtn(text: "Enregister",),
              ],
            ),
          ),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
