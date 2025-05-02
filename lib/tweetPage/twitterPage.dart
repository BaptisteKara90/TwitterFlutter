import 'package:flutter/material.dart';
import 'package:twitter/shareComponents/Footer.dart';
import 'package:twitter/shareComponents/Header.dart';

import 'contentBody.dart';

class TwitterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String email = (ModalRoute.of(context)!.settings.arguments as String?) ?? "";
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter"),
      ),
      body: Column(
        children: [
          HeaderMenu(),
          Text(email),
          Expanded(
              child: Tweet()
          ),
          FooterMenu(),
        ],
      ),
    );
  }
}