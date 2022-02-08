import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/controllers.dart/tips_list_controller.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';
class GridViewPage extends StatelessWidget {
  GridViewPage({ Key? key }) : super(key: key);

  final TipsController tipsController = Get.put(TipsController());

  @override
  Widget build(BuildContext context) {
    return GetX<TipsController>(
      builder: (controller) {
        return GridView.builder(
          itemCount: controller.tips.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              // crossAxisCount: 2,
              maxCrossAxisExtent: 180,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              childAspectRatio: 2,
            ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: CustomButton(
                text: tipsController.tips[index].name,
                onPress: (){
                  Get.toNamed(tipsController.tips[index].route, arguments: {
                    'Docs': tipsController.tips[index].docs
                  });
                }
              ),
            );
          }
        );
      });
  }
}