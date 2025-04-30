import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget{
  
  String label;
  
  FooterButton({super.key, required this.label});
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(label, style: TextStyle(color: Colors.grey)));
  }
  
}

class FooterMenu extends StatelessWidget {
  const FooterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: Container(
        child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             FooterButton(label: 'Fil'),
              FooterButton(label: 'Notification'),
              FooterButton(label: 'Message'),
              FooterButton(label: 'Moi'),
            ]),
      ),
    );
  }
}