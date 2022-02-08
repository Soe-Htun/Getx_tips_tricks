import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/controllers.dart/student_controller.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';

class GetxControllerDocs extends StatelessWidget {
  GetxControllerDocs({ Key? key }) : super(key: key);
  final StudentController studentController = Get.put(StudentController());

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
                text: 'In student model ,', 
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
                      text: 'class StudentModel {', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: 'var name ="Tom".obs;', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: 'var age = 25.obs;', 
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

            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child:  CustomText(
                padding: 20,
                fontSize: 19, 
                fontWeight: FontWeight.bold,
                text: 'In student controller ,', 
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
                      text: 'class StudentController extends GetxController {', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: 'var student = StudentModel();', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: 'void convertToUpperCase() {', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 20,
                      text: 'student.name.value = student.name.value.toUpperCase();', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: '}', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 10,
                      text: 'void convertToUpperCase() {', 
                      color: Colors.black
                    ),
                    CustomText(
                      padding: 20,
                      text: 'student.name.value = student.name.value.toUpperCase();', 
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
                    text: 'final StudentController studentController = ', 
                    color: Colors.black
                  ),
                  const CustomText(
                    padding: 10,
                    text: 'Get.put(StudentController());', 
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
                    text: ' "Name is ${studentController.student.name}" ', 
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
                    text: 'studentController.convertToUpperCase();', 
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
                    text: 'studentController.convertToLowerCase();', 
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