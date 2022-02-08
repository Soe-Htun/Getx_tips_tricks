import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/constants.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';
import 'package:getx_tips_tricks/widgets/custom_listtile.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        child: CustomButton(
          text: "BottomSheet",
          onPress: () {
            Get.bottomSheet(
              Container(
                child: Wrap(
                  children: [
                    CustomListTile(
                      icon: Icons.wb_sunny_outlined, 
                      text: 'Light Theme', 
                      onTap: () {
                        Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                        print('light');
                      }
                    ),

                    CustomListTile(
                      icon: Icons.wb_sunny, 
                      text: 'Dark Theme', 
                      onTap: () {
                        Get.changeTheme(Get.isDarkMode ? ThemeData.dark(): ThemeData.light());
                        print('dark');
                      }
                    )
                  ],
                ),
              ),
              
             barrierColor: Get.isDarkMode? Colors.black : Colors.grey, // body color

              backgroundColor: Get.isDarkMode? Colors.black : Colors.white, // Background color of bottomsheet
              isDismissible: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                ),
                side: BorderSide(
                  color: kPrimaryColor,
                  style: BorderStyle.solid,
                  width: 2
                )
              ),

              enableDrag: true
            );
          }
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward_ios),
        tooltip: "Go to Details",
        onPressed: () {
          Get.toNamed(Get.arguments['Docs']);
          debugPrint(Get.arguments['Docs']);
        },
      ),
    );
  }
}