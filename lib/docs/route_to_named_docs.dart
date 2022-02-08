import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
import 'package:getx_tips_tricks/widgets/custom_text.dart';

class RouteToNamedDocs extends StatelessWidget {
  const RouteToNamedDocs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          onPress: (){
            Get.to(const Home());
            // Get.back();
          }
        ),
        title: const Text("Route ToNamed Docs"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 30, bottom: 20, right: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomText(
                text: 'return GetMaterialApp(', 
                color: Colors.black
              ),
              CustomText(
                padding: 10,
                text: 'title: "Navigation",', 
                color: Colors.black
              ),
              CustomText(
                padding: 10,
                text: 'initialRoute: "/"', 
                color: Colors.black
              ),
              CustomText(
                padding: 10,
                text: 'defaultTransition: Transition.zoom', 
                color: Colors.black
              ),
              CustomText(
                padding: 10,
                text: 'getPages: [', 
                color: Colors.black
              ),
              // CustomText(
              //   padding: 10,
              //   text: 'GetPage(name: "/routeNavigate", page: () => const RouteNavigate()),', 
              //   color: Colors.black
              // ),
              CustomText(
                padding: 20,
                text: 'GetPage(', 
                color: Colors.black
              ),
              CustomText(
                padding: 30,
                text: 'name: "/routeNavigate",', 
                color: Colors.black
              ),
              CustomText(
                padding: 30,
                text: 'page: () => const RouteNavigate(),', 
                color: Colors.black
              ),
              CustomText(
                padding: 30,
                text: 'transition: Transition.leftToRight', 
                color: Colors.black
              ),
              CustomText(
                padding: 20,
                text: ')', 
                color: Colors.black
              ),
              CustomText(
                padding: 20,
                text: 'GetPage(', 
                color: Colors.black
              ),
              CustomText(
                padding: 30,
                text: 'name: "/routeNavigateDocs",', 
                color: Colors.black
              ),
              CustomText(
                padding: 30,
                text: 'page: () => const RouteNavigateDocs(),', 
                color: Colors.black
              ),
              CustomText(
                padding: 30,
                text: 'transition: Transition.leftToRight', 
                color: Colors.black
              ),
              CustomText(
                padding: 20,
                text: ')', 
                color: Colors.black
              ),
              CustomText(
                padding: 20,
                text: 'GetPage(', 
                color: Colors.black
              ),
              CustomText(
                padding: 30,
                text: 'name: "/routeNavigate/:someValue",', 
                color: Colors.black
              ),
              CustomText(
                padding: 30,
                text: 'page: () => const RouteNavigate(),', 
                color: Colors.black
              ),
              CustomText(
                padding: 30,
                text: 'transition: Transition.leftToRight', 
                color: Colors.black
              ),
              CustomText(
                padding: 20,
                text: ')', 
                color: Colors.black
              ),
              CustomText(
                padding: 10,
                text: ']', 
                color: Colors.black
              ),
              CustomText(
                text: ');', 
                color: Colors.black
              )
            ],
          ),
        ),
      ),
    );
  }
}