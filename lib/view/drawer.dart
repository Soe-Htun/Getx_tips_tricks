import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/constants.dart';
import 'package:getx_tips_tricks/controllers.dart/tips_list_controller.dart';
import 'package:getx_tips_tricks/widgets/custom_drawer.dart';

 class MainDrawer extends StatelessWidget {
  MainDrawer({ Key? key }) : super(key: key);
  final TipsController tipsController = Get.put(TipsController());
   @override
   Widget build(BuildContext context) {
    return GetX<TipsController>(
      builder: (controller){
        return ListView.builder(
          itemCount: controller.tips.length,
          itemBuilder: (context, index) {
            return Drawer(
              child: Container(
                decoration: const BoxDecoration(
                  color: kTextColor
                ),
                child: Column(
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text('Drawer Header'),
                    ),
                    CustomDrawer(
                      text: tipsController.tips[index].name,
                      onTap: (){
                        Get.toNamed(tipsController.tips[index].route, arguments: {
                          'Docs': tipsController.tips[index].docs
                        });
                      }
                    )
                  ],
                ),
              ),
            );
          }
        );
      }
    );
  }
}