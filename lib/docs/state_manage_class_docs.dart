import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:getx_tips_tricks/models/student.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';

class StateManageClassDocs extends StatelessWidget {

  StateManageClassDocs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    final student = Student(name: "james", age: 25).obs;
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back_ios,
          onPress: (){
            Get.to(Home());
            // Get.back();
          }
        ),
        title: const Text("State Manage Class Docs"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child:  CustomText(
                padding: 20,
                fontSize: 19, 
                fontWeight: FontWeight.bold,
                text: 'In student class,', 
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
                      text: 'class Student {', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: 'var name;', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: 'var age;', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: 'Student({', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 20,
                      text: 'required this.name;', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 20,
                      text: 'required this.age;', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: '});', 
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
      
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only( left: 30, bottom: 20, right: 0),
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
                    text: 'final student = Student(', 
                    color: Colors.black
                  ),
                  const CustomText(
                    padding: 10,
                    text: 'name: "james",', 
                    color: Colors.black
                  ),
                  const CustomText(
                    padding: 10,
                    text: 'age: 25,', 
                    color: Colors.black
                  ),
                  const CustomText(
                    text: ').obs;', 
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
                    text: "title: const Text('State Management Class'),", 
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
                    text: '"Name is ${student.value.name}"', 
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
                    text: ')),', 
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
                    text: '"Upper"', 
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
                    text: 'student.update((val) {', 
                    color: Colors.black
                  ),
                  const CustomText(
                    padding: 70,
                    text: 'val.name = val.name.toString().toUppercase();', 
                    color: Colors.black
                  ),
                  const CustomText(
                    padding: 60,
                    text: '});', 
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
                    text: '"Lower"', 
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
                    text: 'student.update((val) {', 
                    color: Colors.black
                  ),
                  const CustomText(
                    padding: 70,
                    text: 'val.name = val.name.toString().toLowercase();', 
                    color: Colors.black
                  ),
                  const CustomText(
                    padding: 60,
                    text: '});', 
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
    );
  }
}