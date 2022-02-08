import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/constants.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({ Key? key }) : super(key: key);

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
        title: const Text('Dialog'),
      ),
      body: Center(
        child: CustomButton(
          text: "Show Dialog",
          onPress: (){
            Get.defaultDialog(
              title: 'Dialog Title',
              titleStyle: const TextStyle(fontSize: 25),
              middleText: "This is middle text",
              middleTextStyle: const TextStyle(fontSize: 20),
              backgroundColor: Colors.grey,
              radius: 15,
              textConfirm: "Ok",
              confirm: const Text("Confirms"),
              confirmTextColor: Colors.white,
              onConfirm: () {},
              textCancel: "Cancel",
              cancel: const Text("Cancels",),
              cancelTextColor: Colors.white,
              onCancel: (){},
              buttonColor: kPrimaryColor,
              
              content: Row(
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Text("Data Loading")
                  )
                ],
              )
            );
          }
        )
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