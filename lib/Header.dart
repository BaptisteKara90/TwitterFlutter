import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  String? label;
  Icon? icon;

  HeaderButton({super.key, this.label, this.icon});

  Widget getButtonType() {
    if (icon != null) {
      return IconButton(onPressed: (){}, icon: icon!);
    } else {
      return TextButton(
          onPressed: () {},
          child: Text(label ?? "",
              style: TextStyle(color: Colors.white, fontSize: 20)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return getButtonType();
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF58B0F0),
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HeaderButton(icon: Icon(Icons.edit, color: Colors.white)),
          HeaderButton(label: "Accueil"),
          HeaderButton(icon: Icon(Icons.search, color: Colors.white)),
        ],
      ),
    );
  }
}
