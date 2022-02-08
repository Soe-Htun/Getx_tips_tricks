import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/controllers.dart/student_controller.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';
class GetxControllerPage extends StatelessWidget {
  GetxControllerPage({ Key? key }) : super(key: key);
  final StudentController studentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Controller Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              "Name is ${studentController.student.name}",
              style: const TextStyle(
                color: Colors.black
              ),
            )),
            const SizedBox(height: 15,),
            CustomButton(
              text: 'Upper', 
              onPress: (){
                studentController.convertToUpperCase();
              }
            ),
            const SizedBox(height: 15,),
            CustomButton(
              text: 'Lower', 
              onPress: (){
                studentController.convertToLowerCase();
              }
            )
          ]
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