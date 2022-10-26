import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class count2page extends GetView<count2> {
  // const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Center(child: Text("Count Page 2")),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.count2icreament(),
      ),
      body: Obx(
        () => Container(
          child:
              Center(child: Text("Count: ${controller.count.value} ")),
        ),
      ),
    );
  }
}
