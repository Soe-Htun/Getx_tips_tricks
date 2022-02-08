import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  @override
  final IconData icon;
  final String text;
  final Function()? onTap;
  const CustomListTile({ Key? key,
    required this.icon,
    required this.text,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}