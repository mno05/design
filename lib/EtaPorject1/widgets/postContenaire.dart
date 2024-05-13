// ignore_for_file: must_be_immutable
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/MediaQuery.dart';
import 'package:flutterdesign/EtaPorject1/widgets/videoPlayer.dart';
import 'package:flutterdesign/tools/DateDifference.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PostContainer extends StatefulWidget {
  String Portee;
  String Prenom;
  String Nom;
  String PathProfile;
  String TypeContenue;
  String? Legende;
  String pathContenu;
  String nbrAime;
  DateTime datePost;
  bool isLike;
  void Function()? onJaimeTap;
  void Function()? CommentTap;
  PostContainer({
    super.key,
    // required this.idPost,
    required this.Prenom,
    required this.Nom,
    required this.PathProfile,
    required this.TypeContenue,
    required this.onJaimeTap,
    required this.CommentTap,
    required this.nbrAime,
    required this.isLike,
    required this.datePost,
    required this.Portee,
    this.Legende,
    required this.pathContenu,
  });

  @override
  State<PostContainer> createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {
  late bool like;
  String nbLike = "";
  String dropdownValue = "Option 1";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    like = widget.isLike;
  }

  @override
  Widget build(BuildContext context) {
    double h = screenSize(context).height;
    double w = screenSize(context).width;

    if (widget.pathContenu.isEmpty) {
      widget.TypeContenue = "Text";
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        // height: h / 2.2,
        width: w - w * 0.002,
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(
          //   color: AppData.BasicColor,
          //   width: 0,
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              //L'entête
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(widget.PathProfile),
                        radius: 15,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${widget.Prenom} ${widget.Nom}',
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // More(Media.width(context), Media.height(context)),
                ],
              ),
              SizedBox(
                height: h * 0.006,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  // mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    widget.Portee == "Tout"
                        ? Icon(FontAwesomeIcons.earthAfrica,
                            size: 15, color: Colors.black87)
                        : Icon(FontAwesomeIcons.peopleGroup,
                            size: 15, color: Colors.black87),
                    SizedBox(width: 8),
                    Text(
                      widget.Portee,
                      style: GoogleFonts.nunito(
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Text(
                      "${DateDifference.Ilya(
                        widget.datePost,
                        DateTime.now(),
                      )}",
                      style: GoogleFonts.nunito(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.006,
              ),

              //Body
              widget.TypeContenue == "Photo"
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        widget.Legende!.isNotEmpty
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  widget.Legende!,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            : Container(),
                        SizedBox(height: 5),
                        Container(
                          width: w,
                          decoration: BoxDecoration(),
                          child: Container(
                              color: Colors.black,
                              height: h * .5,
                              width: w,
                              child: Image.network(
                                widget.pathContenu,
                                loadingBuilder: (ctx, c, l) {
                                  if (l == null) return c;
                                  return Center(
                                    child: Container(
                                      height: h * .5,
                                      width: w,
                                      color: Colors.black54,
                                      child: const Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.pink,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )),
                        ),
                      ],
                    )
                  : widget.TypeContenue == "Video"
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.Legende!.isNotEmpty
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      widget.Legende!,
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                : Container(),
                            const SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.only(
                                  top: h * 0.003, bottom: h * 0.003),
                              width: w,
                              // child: Video(
                              //   path: widget.pathContenu,
                              // ),
                            ),
                          ],
                        )
                      : Container(
                          padding: EdgeInsets.all(h * .1),
                          color: const Color(0xFF769FA1),
                          child: Center(
                            child: Text(
                              widget.Legende!,
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
              // SizedBox(height: h * .05),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      FontAwesomeIcons.solidThumbsUp,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(width: w * .02),
                    Text((widget.nbrAime)),
                    SizedBox(width: w * .02),
                    Text(
                      (widget.nbrAime != "1")
                          ? "personnes ont aimé ça"
                          : "personne a aimé ça",
                      style: GoogleFonts.nunito(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: w,
                color: Colors.black45,
              ),
              SizedBox(height: h * 0.001),
              Container(
                width: w,
                height: h * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      padding: EdgeInsets.all(3),
                      onPressed: () {
                        widget.onJaimeTap!();
                        setState(() {
                          like = !like;
                        });
                      },
                      icon: Column(
                        children: [
                          Icon(FontAwesomeIcons.solidThumbsUp,
                              color: like ? Colors.blue : Colors.black54),
                          Text(
                            "J'aime",
                            style: TextStyle(fontSize: 7),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.all(3),
                      onPressed: widget.CommentTap,
                      icon: Column(
                        children: [
                          // Icon(Icons.comment),
                          Icon(FontAwesomeIcons.comment),
                          Text(
                            "Commenter",
                            maxLines: 1,
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.all(3),
                      onPressed: () {},
                      icon: const Column(
                        children: [
                          Icon(
                            Icons.refresh,
                          ),
                          Text(
                            "Republier",
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(3),
                      onPressed: () {},
                      icon: const Column(
                        children: [
                          Icon(
                            Icons.send_rounded,
                            // color: Colors.black12,
                          ),
                          Text(
                            "Envoyer",
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 7,
                              // color: Colors.black12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
