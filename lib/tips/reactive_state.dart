import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/controllers.dart/reactive_state_controller.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';

class ReactiveState extends StatelessWidget {
  ReactiveState({ Key? key }) : super(key: key);
  ReactiveStateController reactiveStateController = Get.put(ReactiveStateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reactive State"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<ReactiveStateController>(
              init: ReactiveStateController(),
              builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25
                  ),
                );
              },
            ),
            const SizedBox(height: 20,),
            CustomButton(
              text: 'Increment', 
              onPress: (){
                reactiveStateController.increment();
                // If instance of controller not create at top
                // Get.find<ReactiveStateController>().increment();
              }
            ),
            const SizedBox(height: 20,),
            CustomButton(
              text: 'Decrement', 
              onPress: (){
                reactiveStateController.decrement();
              }
            )
            
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward_ios),
        tooltip: "Go to Details",
        onPressed: () {
          Get.toNamed(Get.arguments['Docs']);
          // debugPrint(Get.arguments['Docs']);
        },
      ),
    );
  }
}