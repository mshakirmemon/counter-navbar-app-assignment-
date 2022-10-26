import 'package:counter_app_test/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class count1page extends GetView<count1> {
  // const MyWidget({super.key});
  count1 controller = Get.put(count1());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Center(child: Text("Count Page 1")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.count1icreament(),
      ),
      body: Obx(
        () => Container(
          child: Center(child: Text("Count: ${controller.count.value} ")),
        ),
      ),
    );
  }
}
