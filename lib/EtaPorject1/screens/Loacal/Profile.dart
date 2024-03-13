import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/screens/Loacal/Messagerie.dart';
import 'package:flutterdesign/EtaPorject1/widgets/CustumButton.dart';
import 'package:flutterdesign/EtaPorject1/widgets/bottomNavigation.dart';
import 'package:flutterdesign/EtaPorject1/widgets/circleAvatar.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_left),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          height: screenSize.height,
          width: screenSize.width,
          child: Column(
            children: [
              _viewProfile(),
              _parametreSection(),
              _parametreSection(isSupport: true),
              SizedBox(height: 80),
              CustumBtn(
                text: "Se déconnecter",
                onPressed: () {
                  Get.to(() => MessagerieScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _viewProfile() {
    double tailleImage = 120;
    var textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustCircleAvatar(
          pathImg:
              "https://img.freepik.com/free-photo/young-successful-african-businessman-posing-dark_176420-4965.jpg",
          raduis: tailleImage,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jephté ONGONA",
              style: textStyle,
            ),
            Text(
              "Elie@gmail.com",
              style: textStyle,
            ),
          ],
        ),
      ],
    );
  }

  _parametreSection({isSupport = false}) {
    var TitleStyle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    );
    var TxtStyle = TextStyle(
      fontSize: 16,
      color: Colors.black54,
    );
    return isSupport
        ? Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Support",
                      style: TitleStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "F.A.Q",
                            style: TxtStyle,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "FedBack",
                            style: TxtStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Parametre",
                      style: TitleStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Notification",
                            style: TxtStyle,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Politique de confidentialité",
                            style: TxtStyle,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Langue",
                            style: TxtStyle,
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
