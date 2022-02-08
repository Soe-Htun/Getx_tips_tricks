import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Function()? onPress;
  const CustomIconButton({ Key? key,
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: onPress,
    );
  }
}