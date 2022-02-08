import 'package:flutter/material.dart';
import 'package:getx_tips_tricks/view/drawer.dart';
import 'package:getx_tips_tricks/view/grid_view.dart';
import 'package:getx_tips_tricks/view/test_view.dart';
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        automaticallyImplyLeading: false,
      ),
      // body: GridViewPage(),
      body: const TestView(),
      // drawer: MainDrawer(),
    );
  }
}