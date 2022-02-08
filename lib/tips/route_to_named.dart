import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/docs/route_to_named_docs.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';

class RouteToNamed extends StatelessWidget {
  const RouteToNamed({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route ToNamed"),
      ),
      body: Center(
        child: CustomButton(
          text: 'Go NamedRoute',
          onPress: (){
            Get.to(const RouteToNamedDocs());
          }),
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