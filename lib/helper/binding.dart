import 'package:get/get.dart';
import 'package:getx_tips_tricks/controllers.dart/tips_list_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TipsController());
  }
}