import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/ImagesPath.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:global_bottom_navigation_bar/global_bottom_navigation_bar.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // currentIndex: ,
      items: [
        btnItem(imgIconHome),
        btnItem(imgIconMessage),
        btnItem(imgIconParametre),
      ],
    );
    // return Row(
    //   children: [
    //     IconButton(
    //       onPressed: () {},
    //       icon: Icon(Icons.home),
    //     )
    //   ],
    // );
  }

  btnItem(String pathImg) => BottomNavigationBarItem(
        icon: Container(
          height: 50,
          width: 50,
          child: Image.asset(pathImg),
        ),
        label: "",
      );
}
