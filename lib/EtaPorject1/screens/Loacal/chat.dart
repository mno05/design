import 'package:flutter/material.dart';
import 'package:flutterdesign/EtaPorject1/Consts/MediaQuery.dart';
import 'package:flutterdesign/EtaPorject1/widgets/actifIndicator.dart';
import 'package:flutterdesign/EtaPorject1/widgets/circleAvatar.dart';
import 'package:get/get.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 50,
          ),
        ),
        title: custumLisTile(
          title: "Caleb Kiang",
          subtitle: "En ligne hier",
          leading:
              "https://img.freepik.com/free-photo/confident-african-businesswoman-smiling-closeup-portrait-jobs-career-campaign_53876-143280.jpg",
          isConnected: false,
        ),
      ),
      bottomSheet: btnSheet(),
    );
  }

  custumLisTile({
    required title,
    required leading,
    required subtitle,
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
    );
  }

  btnSheet() {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 10),
      // height: h * 0.1,
      width: screenSize(context).width,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            child: Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.black54,
            ),
          ),
          InkWell(
            child: Icon(
              Icons.link,
              color: Colors.black54,
            ),
          ),
          Container(
            constraints: BoxConstraints(maxHeight: 300),
            margin: EdgeInsets.all(1),
            padding: EdgeInsets.only(left: 10),
            width: screenSize(context).width / 1.35,
            decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadiusDirectional.circular(25)),
            child: TextField(
              // controller: messTE,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "Ecrire un message",
                border: InputBorder.none,
              ),
            ),
          ),
          InkWell(
              child: Icon(
                Icons.send_rounded,
                size: 35,
                color: Color(0xFF769FA1),
              ),
              onTap: () async {})
        ],
      ),
    );
  }
}
