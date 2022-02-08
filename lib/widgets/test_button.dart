import 'package:flutter/material.dart';

import '../constants.dart';

class TestButton extends StatelessWidget {
  final String text;
  final Function()? onPress;

  const TestButton({ Key? key,
    required this.text,
    this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 37,
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