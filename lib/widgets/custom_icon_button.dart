import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Function()? onPress;
  final IconData icon;
  const CustomIconButton({ Key? key,
    required this.onPress,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onPress,
    );
  }
}