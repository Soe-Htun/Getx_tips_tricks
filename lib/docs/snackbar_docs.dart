import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';

class SnackBarDocs extends StatelessWidget {
  SnackBarDocs({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          onPress: (){
            Get.to(const Home());
            // Get.back();
          }
        ),
        title: const Text('SnackBar Class'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                // Text("Getx sanckbar"),
                CustomText(
                  text: "Get.snackBar(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "'SnackBar Title',",
                  color: Colors.red
                ),
                CustomText(
                  padding: 10,
                  text: "'This is snackbar message',",
                  color: Colors.red
                ),
                CustomText(
                  padding: 10,
                  text: "snackPosition: SnackPosition.BOTTOM,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "colorText: Colrs.white,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "onTap:() {},",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "barBlur: 20,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "backgroundColor: Colors.black,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "duration: Duration(seconds: 3),",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "borderRadius: 20,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "margin: const EdgeInsets.all(10),",
                  color: Colors.black
                ),
                CustomText(
                  text: ");",
                  color: Colors.black
                ),
      
                SizedBox(height: 30,),
      
                CustomText(
                  text: "ALL FEATURES",
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),

                SizedBox(height: 30),

                CustomText(
                  text: "Color colorText,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Duration duration,",
                  color: Colors.black
                ),
                CustomText(
                  text: "SnackPosition snackPosition,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Widget titleText,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Widget messageText,",
                  color: Colors.black
                ),
      
                CustomText(
                  text: "bool instantInit,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Widget icon,",
                  color: Colors.black
                ),
                CustomText(
                  text: "bool shouldIconPulse,",
                  color: Colors.black
                ),
                CustomText(
                  text: "double maxWidth,",
                  color: Colors.black
                ),
                CustomText(
                  text: "EdgeInsets margin,",
                  color: Colors.black
                ),
                CustomText(
                  text: "EdgeInsets padding,",
                  color: Colors.black
                ),
                CustomText(
                  text: "double borderRadius,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color borderColor,",
                  color: Colors.black
                ),
                CustomText(
                  text: "double borderWidth,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color backgroundColor,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color leftBarIndicatorColor,",
                  color: Colors.black
                ),
                CustomText(
                  text: "List<BoxShadow> boxShadows,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Gradient backgroundGradient,",
                  color: Colors.black
                ),
                CustomText(
                  text: "FlatButton mainButton,",
                  color: Colors.black
                ),
                CustomText(
                  text: "OnTap onTap,",
                  color: Colors.black
                ),
                CustomText(
                  text: "bool isDismissible,",
                  color: Colors.black
                ),
                CustomText(
                  text: "bool showProgressIndicator,",
                  color: Colors.black
                ),
                CustomText(
                  text: "AnimationController progressIndicatorController,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color progressIndicatorBackgroundColor,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Animation<Color> progressIndicatorValueColor,",
                  color: Colors.black
                ),
                CustomText(
                  text: "SnackStyle snackStyle,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Curve forwardAnimationCurve,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Curve reverseAnimationCurve,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Duration animationDuration,",
                  color: Colors.black
                ),
                CustomText(
                  text: "double barBlur,",
                  color: Colors.black
                ),
                CustomText(
                  text: "double overlayBlur,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color overlayColor,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Form userInputForm",
                  color: Colors.black
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}