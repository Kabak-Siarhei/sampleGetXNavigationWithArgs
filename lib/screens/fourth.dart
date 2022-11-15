import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Fourth extends StatelessWidget {
  const Fourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fourth Screen"),
      ),
      body: Center(
        child: (Get.arguments != null)
            ? Text(Get.arguments)
            : Column(
                children: <Widget>[
                  OutlinedButton(
                    child: const Text("Return Text 'hello'"),
                    onPressed: () {
                      Get.back(result: "hello");
                    },
                  ),
                  OutlinedButton(
                    child: const Text("Return Text 'world'"),
                    onPressed: () {
                      Get.back(result: "world");
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
