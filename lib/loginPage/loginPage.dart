import 'package:flutter/material.dart';
import 'package:twitter/shareComponents/Header.dart';

import '../shareComponents/Footer.dart';
import 'connectForm.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          children: [
            HeaderMenu(),
            Expanded(
                child: ConnectForm()
            ),
            FooterMenu()
          ],
        ));
  }
}
