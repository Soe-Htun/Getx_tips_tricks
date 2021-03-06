import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/controllers.dart/tips_list_controller.dart';
import 'package:getx_tips_tricks/models/tips_list_model.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';
class GridViewPage extends StatefulWidget {
  GridViewPage({ Key? key }) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  TextEditingController searchController = TextEditingController();

  String searchKey = '';

  final TipsController tipsController = Get.put(TipsController());

  // final currentList = Get.find<TipsController>().tips.length;

  Widget customSearch(double width) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width,
            height: 40,
            child: TextField(
              style: const TextStyle(color: Colors.black),
              controller: searchController,
              onChanged: (value) => _searchTips(value),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchKey.isNotEmpty
                ? CustomIconButton(
                  onPress: (){},
                  icon: Icons.clear)
                  : null,

                filled: true,
                
                fillColor: const Color(0xfff5f6fa),
                hintText: 'Search...',
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0
                  )
                )
              ),
              
            ),
          ),
        ],
      ),
    );
  }

  _searchTips(String enteredKeyword) {
    searchKey = enteredKeyword;
    setState(() {
      if(searchKey.isEmpty) {
        print('Empty');
        return;
      } else{
        // print(currentList);
      }
    });
  }
  _clearSearchKey() {
    searchController.clear();
    searchKey = '';
    _searchTips(searchKey);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        automaticallyImplyLeading: false,
        actions: [
          customSearch(200)
        ],
      ),
      body: GetX<TipsController>(
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
        }),
    );
  }
}