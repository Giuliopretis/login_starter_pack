import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_starter_pack/pages/forgot_password_page.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            onPressed: () => Get.to(const ForgotPasswordPage()),
            child: const Text('Password dimenticata')
          )
        ],
      ),
    );
  }
}