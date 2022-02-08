import 'package:flutter/material.dart';
import 'package:getx_tips_tricks/widgets/test_button.dart';
import 'dart:core';
class Test extends StatelessWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          TestButton(text: 'Test1'),
          TestButton(text: 'Test2',
           onPress: (){
             print('Test2');
           },
          )
        ],
      ),
    );
  }
}