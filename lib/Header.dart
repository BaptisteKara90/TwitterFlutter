import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget{

  String label;

  HeaderButton({required this.label});

  @override
  Widget build(BuildContext context) {
   return TextButton(
        onPressed: () {},
        child: Text(label,
            style: TextStyle(color: Colors.white, fontSize: 20)));
  }

}

class HeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF58B0F0),
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         IconButton(onPressed: (){}, icon: Icon(Icons.edit, color: Colors.white)),
          HeaderButton(label: "Accueil"),
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white)),
        ],
      ),
    );
  }
}