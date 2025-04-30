import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class ConnectForm extends StatefulWidget {
  const ConnectForm({super.key});

  @override
  State<ConnectForm> createState() => _ConnectFormState();
}

class _ConnectFormState extends State<ConnectForm> {
  final _keyForm = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool remember = false;

  void toggleRemember(bool value) {
    setState(() {
      remember = value;
    });
  }

  String? validateMail(value) {
    if (!EmailValidator.validate(value)) {
      return "Votre email n'est pas valide";
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == null || value.trim().isEmpty) {
      return "Veuillez rentrer votre mot de passe";
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
                keyboardType: TextInputType.emailAddress,
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
                validator: validatePassword,
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
                  Switch(value: remember, onChanged: toggleRemember),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          if (_keyForm.currentState!.validate()) {
                            _keyForm.currentState!.save();
                            Navigator.pushNamed(context, "/twitter", arguments : email);
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
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xFF1DA1F2)),
                          foregroundColor:
                              WidgetStateProperty.all(Colors.white),
                        ),
                        child: Text("Se connecter")),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
