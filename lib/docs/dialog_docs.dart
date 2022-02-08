import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';

class DialogDocs extends StatelessWidget {
  const DialogDocs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back_ios,
          onPress: (){
            // Get.back();
            Get.to(Home());
          }
        ),
        title: const Text("Dialog Class"),
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
                  text: "To open default dialog:",
                  color: Colors.black
                ),

                SizedBox(height: 30),

                CustomText(
                  text: "Get.defaultDialog(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "title: 'Dialog Title',",
                  color: Colors.red
                ),
                CustomText(
                  padding: 10,
                  text: "titleStyle: const TextStyle(fontSize: 25),",
                  color: Colors.red
                ),
                CustomText(
                  padding: 10,
                  text: "middleText: 'This is middle text',",
                  color: Colors.red
                ),
                CustomText(
                  padding: 10,
                  text: "middleTextStyle: const TextStyle(fontSize: 20),",
                  color: Colors.red
                ),
                CustomText(
                  padding: 10,
                  text: "onTap:() {},",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "backgroundColor: Colors.grey,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "backgroundColor: Colors.black,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "radius: 15,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "textConfirm: 'Ok',",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "confirmTextColor: Colors.white,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "onConfirm: () {},",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "textCancel: 'Cancel',",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "cancelTextColor: Colors.white,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "onCancel: (){},",
                  color: Colors.black
                ),

                CustomText(
                  padding: 10,
                  text: "content: Row(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 20,
                  text: "children: const [",
                  color: Colors.black
                ),
                CustomText(
                  padding: 30,
                  text: "CircularProgressIndicator(),",
                  color: Colors.black
                ),

                CustomText(
                  padding: 30,
                  text: "Expanded(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 40,
                  text: "child: Text('Data Loading'),",
                  color: Colors.black
                ),
                CustomText(
                  padding: 30,
                  text: ")",
                  color: Colors.black
                ),
                CustomText(
                  padding: 20,
                  text: "]",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: ")",
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
                
                SizedBox(height: 20,),
                CustomText(
                  text: "String title,",
                  color: Colors.black
                ),
                CustomText(
                  text: "TextStyle titleStyle,",
                  color: Colors.black
                ),
                CustomText(
                  text: "String middleText,",
                  color: Colors.black
                ),
                CustomText(
                  text: "TextStyle middleTextStyle,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color backgroundColor,",
                  color: Colors.black
                ),
      
                CustomText(
                  text: "double radius,",
                  color: Colors.black
                ),
                CustomText(
                  text: "String textConfirm,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color confirmTextColor,",
                  color: Colors.black
                ),
                CustomText(
                  text: "onConfirm onConfirm",
                  color: Colors.black
                ),
                CustomText(
                  text: "Text confirm,",
                  color: Colors.black
                ),
                CustomText(
                  text: "String textCancel,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color cancelTextColor,",
                  color: Colors.black
                ),
                CustomText(
                  text: "onCancel onCancel,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color buttonColor,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Text cancel,",
                  color: Colors.black
                ),
               
                CustomText(
                  text: "Widget content",
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