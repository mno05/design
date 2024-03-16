import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/MediaQuery.dart';
import 'package:flutterdesign/EtaPorject1/widgets/bottomNavigation.dart';
import 'package:flutterdesign/EtaPorject1/widgets/postContenaire.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Accueil",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: screenSize(context).height,
        width: screenSize(context).width,
        child: ListView(
          children: [
            PostContainer(
              datePost: DateTime.now(),
              Prenom: "Moïse",
              Nom: "NDJADI",
              PathProfile:
                  "https://img.freepik.com/free-photo/confident-african-businesswoman-smiling-closeup-portrait-jobs-career-campaign_53876-143280.jpg",
              TypeContenue: "Texte",
              onJaimeTap: () {},
              CommentTap: () {},
              nbrAime: "2",
              Legende: "Tout ça",
              isLike: true,
              // datePost: DateTime.now(),
              // idProprioPost: "13",
              // idUserClick: "12",
              pathContenu: "",
              Portee: "Tout le monde",
            ),
            PostContainer(
              datePost: DateTime.now(),
              Prenom: "David",
              Nom: "SHANDU",
              PathProfile:
                  "https://img.freepik.com/free-photo/portrait-cool-man-with-sunglasses-dancing_23-2148851011.jpg",
              TypeContenue: "Photo",
              onJaimeTap: () {},
              CommentTap: () {},
              nbrAime: "2",
              Legende: "Frère comment",
              isLike: true,
              // datePost: DateTime.now(),
              // idProprioPost: "13",
              // idUserClick: "12",
              pathContenu:
                  "https://img.freepik.com/free-photo/worldface-congolese-kid-white-background_53876-14462.jpg",
              Portee: "Tout le monde",
            ),
            PostContainer(
              datePost: DateTime.now(),
              Prenom: "Moïse",
              Nom: "NDJADI",
              PathProfile:
                  "https://img.freepik.com/free-photo/confident-african-businesswoman-smiling-closeup-portrait-jobs-career-campaign_53876-143280.jpg",
              TypeContenue: "Photo",
              onJaimeTap: () {},
              CommentTap: () {},
              nbrAime: "2",
              Legende: "Ce pays a beaucoup de chance",
              isLike: true,
              pathContenu:
                  "https://img.freepik.com/free-photo/3d-depiction-arabic-palace-islamic-ramadan-celebration_23-2151259880.jpg",
              Portee: "Tout le monde",
            ),
            PostContainer(
              datePost: DateTime.now(),
              Prenom: "Abedi",
              Nom: "ONGONA",
              PathProfile:
                  "https://img.freepik.com/free-photo/confident-african-businesswoman-smiling-closeup-portrait-jobs-career-campaign_53876-143280.jpg",
              TypeContenue: "Video",
              onJaimeTap: () {},
              CommentTap: () {},
              nbrAime: "2",
              Legende: "Test vidéo",
              isLike: true,
              pathContenu:
                  "https://africanap.000webhostapp.com/1108762_1080p_woodland_run_1920x1080.mp4",
              Portee: "Tout le monde",
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
