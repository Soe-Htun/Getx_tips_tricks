import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/controllers.dart/internalization_controller.dart';
import 'package:getx_tips_tricks/lang/message.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';

class Internalization extends StatelessWidget {
  Internalization({ Key? key }) : super(key: key);
  InternalizationController internalizationController = Get.put(InternalizationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back_ios,
          onPress:() {
            // Get.back();
            Get.to(Home());
          }
        ),
        title: const Text("Internalization"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: 'hello'.tr, 
              color: Colors.black
            ),
            const SizedBox(height: 20,),

            CustomButton(
              text: 'Chinese', 
              onPress: () {
                internalizationController.changeLanguage('ch', 'CH');
              }
            ),
            const SizedBox(height: 20,),
            CustomButton(
              text: 'French', 
              onPress: () {
                internalizationController.changeLanguage('fr', 'FR');
              }
            ),
            const SizedBox(height: 20,),
            CustomButton(
              text: 'English', 
              onPress: () {
                internalizationController.changeLanguage('en', 'US');
              }
            )
          ],
        ),
      ),
    );
  }
}