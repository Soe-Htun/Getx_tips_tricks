import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/controllers.dart/reactive_state_controller.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';

class ReactiveStateDocs extends StatelessWidget {
  ReactiveStateDocs({ Key? key }) : super(key: key);
  ReactiveStateController controller = Get.put(ReactiveStateController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back_ios,
          onPress: (){
            Get.to(Home());
            // Get.back();
          }
        ),
        title: const Text("Reactive State Docs"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only( bottom: 20),
                  child: CustomText(
                    padding: 20,
                    fontSize: 19, 
                    fontWeight: FontWeight.bold,
                    text: 'In Reactive Controller,', 
                    color: Colors.black
                  ),
                ),
                Container(
                  width: size.width,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20, right: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        
                        SizedBox(height: 10,),
                        CustomText(
                          text: 'class ReactiveController extends GetxController {', 
                          color: Colors.black
                        ),
                        CustomText(
                          padding: 10,
                          text: 'var count = 0.obs;', 
                          color: Colors.black
                        ),
                        CustomText(
                          padding: 10,
                          text: 'void increment() {', 
                          color: Colors.black
                        ),
                        CustomText(
                          padding: 20,
                          text: 'count++;', 
                          color: Colors.black
                        ),
                        CustomText(
                          padding: 10,
                          text: '}', 
                          color: Colors.black
                        ),
                        CustomText(
                          padding: 10,
                          text: 'void decrement() {', 
                          color: Colors.black
                        ),
                        CustomText(
                          padding: 20,
                          text: 'count--;', 
                          color: Colors.black
                        ),
                        CustomText(
                          padding: 10,
                          text: '}', 
                          color: Colors.black
                        ),
                        
                        CustomText(
                          text: '}', 
                          color: Colors.black
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20, right: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const CustomText(
                        text: 'In main file,',
                        fontSize: 19, 
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      const SizedBox(height: 20,),
                      const CustomText(
                        text: 'ReactiveController reactiveController =', 
                        color: Colors.black
                      ),
                      const CustomText(
                        text: 'Get.put(ReactiveController());', 
                        color: Colors.black
                      ),
                      const SizedBox(height: 20,),
            
                      const CustomText(
                        text: 'return Scaffold(', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 10,
                        text: 'appBar: AppBar(', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 20,
                        text: "title: const Text('Reactive State'),", 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 10,
                        text: '),', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 10,
                        text: 'body: Center(', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 20,
                        text: 'child: Column(', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 30,
                        text: 'mainAxisAlignment: MainAxisAlignment.center,', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 30,
                        text: 'crossAxisAlignment: CrossAxisAlignment.center,', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 30,
                        text: 'children: [', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 40,
                        text: 'GetX<ReactiveController>(', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: 'builder: (controller) {', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 60,
                        text: 'return Text(', 
                        color: Colors.black
                      ),
                      CustomText(
                        padding: 70,
                        text: '"The value is ${controller.count}",', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 60,
                        text: ');', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: '}', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 40,
                        text: ')', 
                        color: Colors.black
                      ),

                      const CustomText(
                        padding: 40,
                        text: 'TextButton(', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: 'child: Text(', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 60,
                        text: '"Increment"', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: '),', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: 'onPressed: (){', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 60,
                        text: 'reactiveStateController.increment();', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: '}', 
                        color: Colors.black
                      ),
            
                      const CustomText(
                        padding: 40,
                        text: ');', 
                        color: Colors.black
                      ),

                      const CustomText(
                        padding: 40,
                        text: 'TextButton(', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: 'child: Text(', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 60,
                        text: '"Increment"', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: '),', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: 'onPressed: (){', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 60,
                        text: 'reactiveStateController.increment();', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 50,
                        text: '}', 
                        color: Colors.black
                      ),
            
                      const CustomText(
                        padding: 40,
                        text: ');', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 30,
                        text: ']', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 20,
                        text: ')', 
                        color: Colors.black
                      ),
                      const CustomText(
                        padding: 10,
                        text: ')', 
                        color: Colors.black
                      ),
                      const CustomText(
                        text: ');', 
                        color: Colors.black
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}