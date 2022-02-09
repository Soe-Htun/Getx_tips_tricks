import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tips_tricks/docs/bottom_sheet_docs.dart';
import 'package:getx_tips_tricks/docs/dialog_docs.dart';
import 'package:getx_tips_tricks/docs/getx_controller_docs.dart';
import 'package:getx_tips_tricks/docs/reactive_state_docs.dart';
import 'package:getx_tips_tricks/docs/route_navigate_docs.dart';
import 'package:getx_tips_tricks/docs/route_to_named_docs.dart';
import 'package:getx_tips_tricks/docs/snackbar_docs.dart';
import 'package:getx_tips_tricks/docs/state_manage_class_docs.dart';
import 'package:getx_tips_tricks/docs/state_manage_docs.dart';
import 'package:getx_tips_tricks/tips/api_data.dart';
import 'package:getx_tips_tricks/tips/bottom_sheet.dart';
import 'package:getx_tips_tricks/tips/dialog.dart';
import 'package:getx_tips_tricks/tips/getx_controller.dart';
import 'package:getx_tips_tricks/tips/internalization.dart';
import 'package:getx_tips_tricks/tips/reactive_state.dart';
import 'package:getx_tips_tricks/tips/route_navigate.dart';
import 'package:getx_tips_tricks/tips/route_to_named.dart';
import 'package:getx_tips_tricks/tips/state_manage.dart';
import 'package:getx_tips_tricks/tips/state_manage_class.dart';
import 'package:getx_tips_tricks/view/grid_view.dart';
import 'package:getx_tips_tricks/view/home.dart';
import 'package:getx_tips_tricks/controllers.dart/test_controller.dart';
import 'package:getx_tips_tricks/view/test_view.dart';

import 'constants.dart';
import 'helper/binding.dart';
import 'lang/message.dart';
import 'tips/snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      translations: Messages(), // your translations,
      locale: const Locale('en', 'US'), // default locale // to get device locale Get.deviceLocale
      fallbackLocale: const Locale('en', 'US'), // fallback locale if wrong locale found
      
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Palatte.kColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)
      ),
      initialRoute: "/",
      defaultTransition: Transition.leftToRight,
      getPages: [
        // GetPage(name: "/", page: () => GridViewPage()),
        GetPage(name: "/", page: () => const TestView()),
        GetPage(name: "/snackBar", page: () => const SnackBarPage()),
        GetPage(name: "/snackBarDocs", page: () => SnackBarDocs()),
        GetPage(name: "/dialog", page: () => const DialogPage()),
        GetPage(name: "/dialogDocs", page: () => const DialogDocs()),
        GetPage(name: "/bottomSheet", page: ()=> const BottomSheetPage()),
        GetPage(name: "/bottomSheetDocs", page: () => const BottomSheetDocs()),
        GetPage(name: "/routeNavigate", page: () => const RouteNavigate()),
        GetPage(name: "/routeNavigateDocs", page: () => const RouteNavigateDocs()),
        GetPage(name: "/routeNavigateToNamed", page: () => const RouteToNamed()),
        GetPage(name: "/routeNavigateToNamedDocs", page: () => const RouteToNamedDocs(), transition: Transition.leftToRight),
        GetPage(name: "/stateManage", page: () => StateManage()),
        GetPage(name: "/stateManageDocs", page: () => StateManageDocs()),
        GetPage(name: "/stateManageClass", page: () => const StateManageClass()),
        GetPage(name: "/stateManageClassDocs", page: () => StateManageClassDocs()),
        GetPage(name: "/getxController", page: () => GetxControllerPage()),
        GetPage(name: "/getxControllerDocs", page: () => GetxControllerDocs()),
        GetPage(name: "/reactiveState", page: () => ReactiveState()),
        GetPage(name: "/reactiveStateDocs", page: () => ReactiveStateDocs()),
        GetPage(name: "/internalization", page: () => Internalization()),
        GetPage(name: "/apiData", page: () => ApiData())
      ],
    );
  }
}

class Palatte {
  static const MaterialColor kColor = MaterialColor(
    0xFF0C9869,
     <int, Color> {
      50: Color(0xFF0C9869),
      100: Color(0xFF0C9869),
      200: Color(0xFF0C9869),
      300: Color(0xFF0C9869),
      400: Color(0xFF0C9869),
      500: Color(0xFF0C9869),
      600: Color(0xFF0C9869),
      700: Color(0xFF0C9869),
      800: Color(0xFF0C9869),
      900: Color(0xFF0C9869) 
    }
  );
}

// class Themes {
//   static final light = ThemeData.light().copyWith(
//     backgroundColor: Colors.white
//   );

//   static final dark = ThemeData.dark().copyWith(
//     backgroundColor: Colors.black,
//   );
// }
