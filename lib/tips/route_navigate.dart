import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/docs/route_navigate_docs.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';

class RouteNavigate extends StatelessWidget {
  const RouteNavigate({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Navigate'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Go to Route',
              onPress: () {
                // Go to home screen with animation and some data
                Get.to(const RouteNavigateDocs(),
                  fullscreenDialog: true, //screen Full dialog
                  transition: Transition.leftToRight,
                  duration: const Duration(milliseconds: 3000), //to provide animation
                  curve: Curves.bounceInOut, // curve animation
                  arguments: "Data from Main"
                );

                // Go to home screen but no option to return to previous screen
                //Get.off(const Home());

                // Go to home screen and cancel all previous screens/ routes
                // Get.offAll(const Home());

                // Go to previous screens
                // Get.back()
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