import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vo_app/controllers/counterController.dart';
import 'package:vo_app/other.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                      "Clicks : ${counterController.counter.value} times")),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(OtherScreen());
                      },
                      child: Text("Open Other Screen")))
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
