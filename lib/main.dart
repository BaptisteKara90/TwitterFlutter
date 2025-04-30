import 'package:flutter/material.dart';

import 'Footer.dart';
import 'Header.dart';
import 'connectForm.dart';
import 'contentBody.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo Layout",
      home: AppHomePage(title: "Demo widget de contenu"),
    );
  }
}

class AppHomePage extends StatelessWidget {
  String title;

  AppHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Twitter"),
        ),
        body: Column(children: [
          HeaderMenu(),
          ConnectForm(),
          Expanded(child: Tweet()),
          FooterMenu()
        ]));
  }
}




