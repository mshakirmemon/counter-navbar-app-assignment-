import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding/main_binding.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    defaultTransition: Transition.fade,
    getPages: [
      GetPage(
        name: '/home',
        page: () => HomePage(),
        binding: HomeBinding(),
      ),
    ],
  ));
}

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/browse',
        onGenerateRoute: controller.onGenerateRoute,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Count 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Count 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Count 3',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.pink,
          onTap: controller.changePage,
        ),
      ),
    );
  }
}
