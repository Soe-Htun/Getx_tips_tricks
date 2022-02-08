import 'package:get/get.dart';
import 'package:getx_tips_tricks/models/tips_list_model.dart';

class TipsController extends GetxController {
  var tips = <TipsListModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchTipsData();
  }
  void fetchTipsData() async {
    await Future.delayed(const Duration(seconds: 1));
    var tipsResult = [
      TipsListModel(
        name: 'SnackBar',
        route: '/snackBar',
        docs: '/snackBarDocs'  
      ),
      TipsListModel(
        name: 'Dialog',
        route: '/dialog',
        docs: '/dialogDocs'  
      ),
      TipsListModel(
        name: 'BottomSheet',
        route: '/bottomSheet',
        docs: '/bottomSheetDocs'  
      ),
      TipsListModel(
        name: 'RouteNavigate',
        route: '/routeNavigate',
        docs: '/routeNavigateDocs'  
      ),
      TipsListModel(
        name: 'RouteToNamed',
        route: '/routeNavigateToNamed',
        docs: '/routeNavigateToNamedDocs'  
      ),
      TipsListModel(
        name: 'StateManage',
        route: '/stateManage',
        docs: '/stateManageDocs'  
      ),
      TipsListModel(
        name: 'StateManageClass',
        route: '/stateManageClass',
        docs: '/stateManageClassDocs'  
      ),
      TipsListModel(
        name: 'GetxController',
        route: '/getxController',
        docs: '/getxControllerDocs'  
      ),
      TipsListModel(
        name: 'ReactiveState',
        route: '/reactiveState',
        docs: '/reactiveStateDocs'  
      ),
      TipsListModel(
        name: 'Internalization',
        route: '/internalization',
        docs: '/reactiveStateDocs'  
      )
    ];
    tips.value = tipsResult;
  }
}