import 'package:flutter/material.dart';
import 'package:getx_tips_tricks/constants.dart';

class CustomDrawer extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CustomDrawer({ Key? key,
    required this.text,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text,
        style: const TextStyle(
          color: kBackgroundColor
        ),
      ),
      onTap: onTap
    );
  }
}