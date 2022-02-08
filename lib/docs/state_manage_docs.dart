import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';
class StateManageDocs extends StatelessWidget {
  StateManageDocs({ Key? key }) : super(key: key);
  var count = 0.obs;
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
        title: const Text('State Manage Docs'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'var count = 0.obs;', 
                  color: Colors.black
                ),
                const CustomText(
                  text: 'void increment() {', 
                  color: Colors.black
                ),
                const CustomText(
                  padding: 10,
                  text: 'count++', 
                  color: Colors.black
                ),
                const CustomText(
                  text: '}', 
                  color: Colors.black
                ),

                const SizedBox(height: 30,),
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
                  text: "title: const Text('State Management'),", 
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
                  text: 'Obx(() => Text(', 
                  color: Colors.black
                ),
                CustomText(
                  padding: 50,
                  text: '"Count value is $count"', 
                  color: Colors.black
                ),
                const CustomText(
                  padding: 50,
                  text: 'style: TextStyle(fontSize: 25)', 
                  color: Colors.black
                ),
                // const CustomText(
                //   padding: 40,
                //   text: ')', 
                //   color: Colors.black
                // ),
                const CustomText(
                  padding: 40,
                  text: '))', 
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
        ),
      ) ,
    );
  }
}