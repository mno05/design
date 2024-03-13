import 'package:flutter/material.dart';

class CustumTfd extends StatelessWidget {
  final bool isEMail;
  final bool isPassword;
  final String text;
  const CustumTfd({
    super.key,
    this.isEMail = false,
    this.isPassword = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 70,
      width: 400,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: .3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye),
                    )
                  : null),
          obscureText: isPassword,
          keyboardType:
              isEMail ? TextInputType.emailAddress : TextInputType.text,
        ),
      ),
    );
  }
}
