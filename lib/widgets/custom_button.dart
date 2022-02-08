import 'package:flutter/material.dart';
import '../constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPress;
  const CustomButton({ Key? key,
    required this.text,
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 40,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextButton(
        onPressed: onPress,
          child: Text(text,
          style: const TextStyle(
            color: kTextColor
          ),
          )
      ),
    );
  }
}