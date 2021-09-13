import 'package:flutter/material.dart';
import 'package:login_starter_pack/widgets/forgot_password.dart';
import 'package:login_starter_pack/widgets/login_registered_message.dart';
import 'package:login_starter_pack/widgets/login_form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      // ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              LoginFormWidget(formKey: _formKey),
              const LoginRegisteredMessage(alreadyRegistered: false),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: (){
                    _formKey.currentState?.validate();
                  },
                  child: const Text('Sign in')
                ),
              ),
              const ForgotPassword(),
            ],
          ),
        ),
      ),
    );
  }
}