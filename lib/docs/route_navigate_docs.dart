import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';

class RouteNavigateDocs extends StatelessWidget {
  const RouteNavigateDocs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          onPress: (){
            // Get.back();
            Get.to(const Home());
          }
        ),
        title: const Text("Route Navigate Class"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                
                CustomText(
                  text: '// Go to home screen with animation and some data',
                  color: Colors.grey
                ),
                CustomText(
                  text: 'Get.to(const RouteNavigateDocs(),',
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: 'fullscreenDialog: true,',
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: 'transition: Transition.leftToRight,',
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: 'duration: const Duration(milliseconds: 4000),',
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: 'curve: Curves.bounceInOut,',
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: 'arguments: "Data from Main"',
                  color: Colors.black
                ),
                CustomText(
                  padding: 10,
                  text: '// pass data to other screen',
                  color: Colors.grey
                ),
                CustomText(
                  text: ');',
                  color: Colors.black
                ),
                SizedBox(height: 20,),
                CustomText(
                  text: '// Go to home screen but no option to return to previous screen',
                  color: Colors.grey
                ),
                CustomText(
                  text: '// Get.off(const Home());',
                  color: Colors.grey
                ),

                SizedBox(height: 20,),
                CustomText(
                  text: '// Go to home screen and cancel all previous screens/ routes',
                  color: Colors.grey
                ),
                CustomText(
                  text: '// Get.offAll(const Home());',
                  color: Colors.grey
                ),

                SizedBox(height: 20,),
                CustomText(
                  text: '// Go to previous screens',
                  color: Colors.grey
                ),
                CustomText(
                  text: '// Get.back();',
                  color: Colors.grey
                ),

                SizedBox(height: 30,),

                CustomText(
                  text: "ALL FEATURES",
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),

                SizedBox(height: 30),

                CustomText(
                  text: "bool fullscreenDialog,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Transition transition,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Duration duration,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Curve curve,",
                  color: Colors.black
                ),
                CustomText(
                  text: "Object arguments",
                  color: Colors.black
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}