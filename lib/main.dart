import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/screens/Loacal/Messagerie.dart';
import 'package:flutterdesign/EtaPorject1/screens/Loacal/acceuil.dart';
import 'package:flutterdesign/EtaPorject1/screens/auth/login.dart';
import 'package:flutterdesign/Universi/login.dart';
import 'package:flutterdesign/okoume/screens/abonnements.dart';
import 'package:flutterdesign/okoume/screens/creation.dart';
import 'package:flutterdesign/okoume/screens/langues.dart';
import 'package:flutterdesign/okoume/screens/profile.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.interTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Creation(),
    );
  }
}
