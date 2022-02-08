import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';

class StateManage extends StatelessWidget {
  StateManage({ Key? key }) : super(key: key);
  var count = 0.obs;
  void increment() {
    count++;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => 
              Text("Count value is $count",
                style: const TextStyle(
                  fontSize:25, 
                  color: Colors.black
                ),
              ),
            ),
            const SizedBox(height: 15,),
            CustomButton(
              text: 'Increment', 
              onPress: (){
                increment();
              }
            ),
          ],
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