import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_tips_tricks/constants.dart';
import 'package:getx_tips_tricks/controllers.dart/api_controller.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';

import '../constants.dart';

class ApiData extends StatelessWidget {
  ApiData({ Key? key }) : super(key: key);
  ApiController apiController = Get.put(ApiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back_ios,
          onPress:() {
            // Get.back();
            Get.to(const Home());
          }
        ),
        title: const Text("Api Data"),
      ),
      body: SingleChildScrollView(
        child: Obx(() {
          if(apiController.isLoading.value) {
            return  Container(
              height: MediaQuery.of(context).size.height,
              child: Center(child: CircularProgressIndicator()),
            );
          } else {
           return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: apiController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              apiController.productList[index].image,
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              color: kPrimaryColor,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
      
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(apiController.productList[index].title,
                                style: const TextStyle(
                                  fontSize: 18, 
                                  color: Colors.black
                                ),
                              ),
                              // Text(apiController.productList[index].description,
                              //   style: const TextStyle(
                              //     fontSize: 14,
                              //     color: Colors.grey
                              //   ),
                              // ),
                              // const SizedBox(height: 30,),
                              Text(apiController.productList[index].price.toString(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey
                                ),
                              )
                            ],
                          )
                        )
                        
                      ],
                    ),
                 ],
                );
              }
            );
          }
        }),
      ),
    );
  }
}