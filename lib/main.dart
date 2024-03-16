import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/screens/Loacal/Messagerie.dart';
import 'package:flutterdesign/EtaPorject1/screens/Loacal/Profile.dart';
import 'package:flutterdesign/EtaPorject1/screens/Loacal/acceuil.dart';
import 'package:flutterdesign/EtaPorject1/screens/auth/login.dart';
import 'package:flutterdesign/Universi/login.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter desing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Accueil(),
    );
  }
}
