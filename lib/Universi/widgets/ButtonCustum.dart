import 'package:flutter/material.dart';

class ButtonCustum extends StatefulWidget {
  const ButtonCustum({super.key});

  @override
  State<ButtonCustum> createState() => _ButtonCustumState();
}

class _ButtonCustumState extends State<ButtonCustum> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Center(
          child: Text(
        "Connexion",
        style: TextStyle(
          fontSize: 20,
          color: Colors.black54,
        ),
      )),
      style: ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.only(left: 150, right: 150, top: 20, bottom: 20),
          ),
          elevation: MaterialStatePropertyAll(0.0),
          backgroundColor: MaterialStatePropertyAll(Colors.grey[300]),
          // side: MaterialStatePropertyAll(BorderRadius.circular(20)),
          // side: MaterialStatePropertyAll(BorderSide()),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            // side: BorderSide(color: Colors.red)
          ))),
    );
  }
}
