import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/controllers.dart/test_controller.dart';
import 'package:getx_tips_tricks/widgets/custom_button.dart';
import 'package:getx_tips_tricks/widgets/custom_icon_button.dart';

class TestView extends StatefulWidget {
  const TestView({ Key? key }) : super(key: key);

  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  List<Map<String, dynamic>> currentList = [];
  List<Map<String, dynamic>> results = [];
  TextEditingController searchController = TextEditingController();

  String searchKey = '';
  @override
  initState() {
    currentList = listData;
    super.initState();
  }

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
                  onPress: _clearSearchKey,
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

  void _searchTips(String enteredKey) {
    searchKey = enteredKey;
    
    //setState(() {
      if(searchKey.isEmpty) {
        results = listData;
        
      } else{
        results = listData
        .where((val) =>
          val["name"].toString().toLowerCase().contains(enteredKey.toLowerCase())).toList();
        print(results);
      }
    //});

    // Refresh UI
    setState(() {
      currentList = results;
    });
  }
  _clearSearchKey() {
    searchController.clear();
    searchKey = '';
    _searchTips(searchKey);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View'),
        actions: [
          customSearch(180)
        ],
      ),
      body: GridView.builder(
            itemCount: currentList.length,
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
                  text: currentList[index]['name'],
                  onPress: (){
                    Get.toNamed(currentList[index]['route'], arguments: {
                      'Docs': currentList[index]['docs']
                    });
                  }
                ),
              );
            }
          )
    );
  }
}