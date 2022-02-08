import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/constants.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back_ios,
          onPress: (){
            Get.back();
          }
        ),
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: CustomButton(
          text: 'SnackBar',
          onPress: (){
            Get.snackbar(
              "SnackBar Title",
              "This is snackbar message",
              snackPosition: SnackPosition.BOTTOM,
              // titleText: const Text("Another Title"),
              // messageText: const Text("Another Message"),
              colorText: kTextColor,
              backgroundColor: kBackgroundColor,
              borderRadius: 15,
              barBlur: 20,
              margin: const EdgeInsets.all(10),
              // maxWidth: 200,
              // animationDuration: const Duration(milliseconds: 3000),
              // backgroundGradient: const LinearGradient(
              //   colors: [
              //     Colors.red, Colors.green
              //   ]
              // ) ,
              // borderColor: Colors.green,
              // borderWidth: 4,
              // boxShadows: [ 
              //   const BoxShadow(
              //   color: Colors.green,
              //   offset: Offset(10,20),
              //   spreadRadius: 20,
              //   blurRadius: 8
              // )],

              // isDismissible: true,
              // dismissDirection: DismissDirection.horizontal,
              // forwardAnimationCurve: Curves.bounceInOut,
              // duration: const Duration(milliseconds: 8000),
              // icon: Icon(Icons.alarm),
              // shouldIconPulse: true,
              // onTap: (value){},
              // barBlur: 20,  
            );
          }
        )
      ) ,
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