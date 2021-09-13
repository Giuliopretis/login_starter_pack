import 'package:flutter/material.dart';
import 'package:login_starter_pack/widgets/login_registered_message.dart';
import 'package:login_starter_pack/widgets/register_form_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            children: <Widget>[
              RegisterFormWidget(formKey: _formKey),
              const LoginRegisteredMessage(alreadyRegistered: true),
              ElevatedButton(
                onPressed: (){
                  _formKey.currentState?.validate();
                },
                child: const Text('Sign up')
              )
            ],
          ),
        ),
      ),
    );
  }
}