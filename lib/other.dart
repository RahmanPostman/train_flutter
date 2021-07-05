import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vo_app/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text("Click : ${_counterController.counter.value}")),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Open Home Screen")))
            ],
          )),
    );
  }
}
