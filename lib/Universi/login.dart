import 'package:flutter/material.dart';
import 'package:flutterdesign/Universi/widgets/ButtonCustum.dart';
import 'package:flutterdesign/Universi/widgets/CustumTextField.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Se connecter",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left_outlined),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenSize.width * .022),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 180),
              CustumTextField(),
              CustumTextField(),
              CustumTextField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Mot de Passe oublié?",
                        style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ButtonCustum(),
            ],
          ),
        ),
      ),
    );
  }
}
