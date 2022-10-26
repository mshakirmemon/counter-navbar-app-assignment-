import 'package:counter_app_test/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class count3page extends GetView<count3> {
  // const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        // bottomOpacity: 34,
        title: Center(child: Text("Count Page 3")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.count3icreament(),
      ),
      body: Obx(
        () => Container(
          child: Center(child: Text("Count: ${controller.count.value} ")),
        ),
      ),
    );
  }
}
