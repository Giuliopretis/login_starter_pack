import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Inserisci la tua email')
                  ),
                  validator: (_) {
                    // add here the email check
                    // if (apiCall == false) {
                    //   'Email non esistente';
                    // }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Recupera password')
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}