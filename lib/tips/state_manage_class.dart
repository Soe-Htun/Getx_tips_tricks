import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:getx_tips_tricks/models/student.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';

class StateManageClass extends StatelessWidget {
  const StateManageClass({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   //final student =  Student();
    final student = Student(name: "james", age: 25).obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Manage Class'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => 
              Text("Name is ${student.value.name}",
                style: const TextStyle(
                  fontSize:25, 
                  color: Colors.black
                ),
              ),
            ),
            const SizedBox(height: 15,),
            CustomButton(
              text: 'Upper', 
              onPress: (){
                //increment();
                student.update((student) {
                  student?.name = student.name.toString().toUpperCase();
                });
               // student.value.name = student.value.name.toUpperCase();
              }
            ),
            const SizedBox(height: 15,),
            CustomButton(
              text: 'Lower', 
              onPress: (){
                student.update((student) {
                  student?.name = student.name.toString().toLowerCase();
                });
                //student.value.name = student.value.name.toLowerCase();
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