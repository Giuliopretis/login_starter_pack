import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({ Key? key, required this.formKey }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {

    String? _password = '';

    return Form(
      key: widget.formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Username'),
              ),
              validator: (value) {
                if (value!.length < 3) {
                  return 'Il nome deve avere almeno 3 caratteri';
                }
              },
            ),
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
                _password = value;
                if (value!.length < 6) {
                  return 'La password deve contenere almeno 3 caratteri';
                }
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Repeat Password'),
              ),
              obscureText: !_isPasswordVisible,
              validator: (value) {
                if (value != _password) {
                  return 'Le password non corrispondono';
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