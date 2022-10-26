import 'package:counter_app_test/pages/count1.dart';
import 'package:counter_app_test/controller/controller.dart';
import 'package:counter_app_test/pages/count2.dart';
import 'package:counter_app_test/pages/count3.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  var currentIndex = 0.obs;

  final pages = <String>['/browse', '/history', '/settings'];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/browse')
      return GetPageRoute(
        settings: settings,
        page: () => count1page(),
        binding: BrowseBinding(),
      );

    if (settings.name == '/history')
      return GetPageRoute(
        settings: settings,
        page: () => count2page(),
        binding: HistoryBinding(),
      );

    if (settings.name == '/settings')
      return GetPageRoute(
        settings: settings,
        page: () => count3page(),
        binding: SettingsBinding(),
      );

    return null;
  }
}

class BrowseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => count1());
  }
}

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => count2());
  }
}

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => count3());
  }
}
