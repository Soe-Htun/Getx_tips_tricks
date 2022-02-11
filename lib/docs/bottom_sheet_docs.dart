import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';
class BottomSheetDocs extends StatelessWidget {
  const BottomSheetDocs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet Class"),
        leading: CustomIconButton(
          icon: Icons.arrow_back_ios,
          onPress:() {
            // Get.back();
            Get.offAll(Home());
          }
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: const [
                CustomText(
                  text: "To open bottom sheet:",
                  color: Colors.black
                ),
                SizedBox(height: 20),
                CustomText(
                  text: "Get.bottomSheet(",
                  color: Colors.black
                ),
                CustomText(
                  text: "Container(",
                  padding: 10,
                  color: Colors.black
                ),
                CustomText(
                  padding: 20,
                  text: "child: Wrap(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 30,
                  text: "children: [",
                  color: Colors.black
                ),
                CustomText(
                  padding: 40,
                  text: "ListTile(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 50,
                  text: "leading: Icon(Icons.wb_sunny_outlined),",
                  color: Colors.black
                ),
                CustomText(
                  padding: 50,
                  text: "title: Text('Light Theme'),",
                  color: Colors.black
                ),
                CustomText(
                  padding: 50,
                  text: "onTap: () {",
                  color: Colors.black
                ),
                CustomText(
                  padding: 60,
                  text: "Get.changeTheme(Get.isDarkMode ? ThemeData.light(): ThemeData.dark());",
                  color: Colors.black
                ),

                CustomText(
                  padding: 50,
                  text: "}",
                  color: Colors.black
                ),
                CustomText(
                  padding: 40,
                  text: ");",
                  color: Colors.black
                ),
                CustomText(
                  padding: 40,
                  text: "ListTile(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 50,
                  text: "leading: Icon(Icons.wb_sunny)",
                  color: Colors.black
                ),
                CustomText(
                  padding: 50,
                  text: "title: Text('Dark Theme')",
                  color: Colors.black
                ),
                CustomText(
                  padding: 50,
                  text: "onTap: () {",
                  color: Colors.black
                ),
                CustomText(
                  padding: 60,
                  text: "Get.changeTheme(Get.isDarkMode ? ThemeData.dark(): ThemeData.light());",
                  color: Colors.black
                ),

                CustomText(
                  padding: 50,
                  text: "}",
                  color: Colors.black
                ),
                CustomText(
                  padding: 40,
                  text: ");",
                  color: Colors.black
                ),
                CustomText(
                  padding: 30,
                  text: "]",
                  color: Colors.black
                ),
                CustomText(
                  padding: 20,
                  text: ")",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: ");",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "barrierColor: Colors.grey,",
                  color: Colors.black
                ),

                CustomText(
                  padding: 10,
                  text: "backgroundColor: Colors.green,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "isDismissible: true,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "shape: const RoundedRetangleBorder(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 20,
                  text: "borderRadius: BorderRadius.only(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 30,
                  text: "topLeft: Radius.circular(15),",
                  color: Colors.black
                ),
                CustomText(
                  padding: 30,
                  text: "topRight: Radius.circular(15)",
                  color: Colors.black
                ),
                CustomText(
                  padding: 20,
                  text: "),",
                  color: Colors.black
                ),
                CustomText(
                  padding: 20,
                  text: "side: BorderSide(",
                  color: Colors.black
                ),
                CustomText(
                  padding: 30,
                  text: "color: Colors.green,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 30,
                  text: "style: BorderStyle.solid,",
                  color: Colors.black
                ),
                CustomText(
                  padding: 30,
                  text: "width: 2",
                  color: Colors.black
                ),
                CustomText(
                  padding: 20,
                  text: ")",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: ");",
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: "enableDrag: true",
                  color: Colors.black
                ),
                CustomText(
                  padding: 0,
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

                CustomText(
                  text: "Color barrierColor",
                  color: Colors.black
                ),
                CustomText(
                  text: "Color backgroundColor",
                  color: Colors.black
                ),
                CustomText(
                  text: "bool isDismissible",
                  color: Colors.black
                ),
                CustomText(
                  text: "String shape",
                  color: Colors.black
                ),
                CustomText(
                  text: "bool enableDrag",
                  color: Colors.black
                )
              ],
            )
          ),
        )
      )
    );
  }
}