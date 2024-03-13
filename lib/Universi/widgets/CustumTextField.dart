import 'package:flutter/material.dart';

class CustumTextField extends StatelessWidget {
  const CustumTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 65,
        width: screenSize.width * 1.5,
        decoration: BoxDecoration(
            border: Border.all(
              width: .8,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: InputBorder.none,
                hintText: "E-mail",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
