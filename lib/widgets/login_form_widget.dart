import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({ Key? key, required this.formKey }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Email'),
              ),
              validator: (value) {
                if (GetUtils.isEmail(value!) == false) {
                  return 'Email non valida';
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                label: const Text('Password'),
                // prefixIcon: const Icon(Icons.lock),
                suffixIcon: getSuffixIcon()
              ),
              obscureText: !_isPasswordVisible,
              validator: (value) {
                if (value!.length < 6) {
                  return 'La password deve contenere almeno 3 caratteri';
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget getSuffixIcon() {
    return IconButton(
      onPressed: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
      icon: _isPasswordVisible ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off)
    );
  }

}