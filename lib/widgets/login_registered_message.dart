import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_starter_pack/pages/login_screen.dart';
import 'package:login_starter_pack/pages/register_screen.dart';

class LoginRegisteredMessage extends StatelessWidget {
  const LoginRegisteredMessage({ Key? key, required this.alreadyRegistered }) : super(key: key);

  final bool alreadyRegistered;

  @override
  Widget build(BuildContext context) {
    String message = alreadyRegistered ? 'Già registrato?' : 'Prima volta qui?';
    String buttonMessage = alreadyRegistered ? 'Login' : 'Registrati';
    Widget page = alreadyRegistered ? const LoginScreen() : const RegisterScreen();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(message),
          TextButton(
            onPressed: (){
              Get.to(page);
            },
            child: Text(buttonMessage)
          )
        ],
      ),
    );
  }
}