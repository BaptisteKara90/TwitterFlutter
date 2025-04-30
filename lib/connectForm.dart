import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class ConnectForm extends StatefulWidget {
  @override
  State<ConnectForm> createState() => _ConnectFormState();
}

class _ConnectFormState extends State<ConnectForm> {
  final _keyForm = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool isRegister = false;

  void toggleRegister(bool value) {
    setState(() {
      isRegister = value;
    });
  }

  String? validateMail(value) {
    if (!EmailValidator.validate(value)) {
      return "Votre email n'est pas valide";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _keyForm,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                onSaved: (value) {
                  email = value!;
                },
                validator: validateMail,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Veuillez saisir votre Email",
                ),
              ),
              TextFormField(
                onSaved: (value) {
                  password = value!;
                },
                obscureText: true,
                decoration: InputDecoration(label: Text("Votre mot de passe")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Mémoriser mes information",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Switch(value: isRegister, onChanged: toggleRegister),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_keyForm.currentState!.validate()) {
                      _keyForm.currentState!.save();
                      print(email);
                      print(password);
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              title: Text(
                                  "Vous êtes bien connecté à Twitter (Noice)!"),
                            );
                          });
                    }
                  },
                  child: Text("Se connecter"))
            ],
          ),
        ));
  }
}
