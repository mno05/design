import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/MediaQuery.dart';
import 'package:flutterdesign/EtaPorject1/screens/Loacal/chat.dart';
import 'package:flutterdesign/EtaPorject1/widgets/actifIndicator.dart';
import 'package:flutterdesign/EtaPorject1/widgets/bottomNavigation.dart';
import 'package:flutterdesign/EtaPorject1/widgets/circleAvatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MessagerieScreen extends StatefulWidget {
  const MessagerieScreen({super.key});

  @override
  State<MessagerieScreen> createState() => _MessagerieScreenState();
}

class _MessagerieScreenState extends State<MessagerieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Message",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.mail,
              size: 35,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenSize(context).height,
          width: screenSize(context).width,
          child: Column(
            children: [
              _searchBar(),
              _messagerieSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }

  _searchBar() {
    return Container(
      height: 60,
      width: screenSize(context).width - 10,
      margin: const EdgeInsets.all(10.0),
      // color: Colors.black,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: const Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Rechercher",
              hintStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _messagerieSection() {
    return Column(
      children: [
        custumLisTile(
          title: "Caleb Kiang",
          subtitle: "Bonsoir tata",
          trailing: "3m",
          leading:
              "https://img.freepik.com/free-photo/confident-african-businesswoman-smiling-closeup-portrait-jobs-career-campaign_53876-143280.jpg",
          isConnected: true,
          onTap: () {
            Get.to(() => Chat());
          },
        ),
        custumLisTile(
          title: "Isaac LUKUSA",
          subtitle: "Demain c'est bon",
          trailing: "5m",
          leading:
              "https://img.freepik.com/free-photo/medium-shot-male-flight-attendant-posing_23-2150312701.jpg",
          isConnected: false,
        ),
        custumLisTile(
          title: "Davind Shandu",
          subtitle: "Bonsoir tata",
          trailing: "8m",
          leading:
              "https://img.freepik.com/free-photo/man-with-glass-wine-one-hand-wine-bottle-other-standing-front-grey-wall_144627-66682.jpg",
          isConnected: true,
        ),
        custumLisTile(
          title: "Mima YAKALA",
          subtitle: "Demain c'est bon",
          trailing: "9m",
          leading:
              "https://img.freepik.com/free-photo/portrait-cool-man-with-sunglasses-dancing_23-2148851011.jpg",
          isConnected: false,
        ),
      ],
    );
  }

  custumLisTile({
    required title,
    required leading,
    required subtitle,
    required trailing,
    required isConnected,
    onTap,
  }) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
      leading: Stack(
        children: [
          CustCircleAvatar(
            pathImg: leading,
            raduis: 60,
          ),
          Positioned(
              left: 40,
              bottom: 0,
              child: ActifIndicator(
                size: 15,
                color: isConnected ? Colors.green : Colors.grey,
              ))
        ],
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black87,
        ),
      ),
    );
  }
}
