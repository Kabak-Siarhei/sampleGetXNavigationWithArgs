import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'fourth.dart';
import 'third.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String dataFromFourth = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Second Screen"),
        leading: BackButton(
          onPressed: () => Get.back<String>(result: "All ok"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              child: Get.arguments != null
                  ? Text(Get.arguments['one'])
                  : const Text("GetX arguments"),
              onPressed: () => Get.off(const Third()),
            ),
            OutlinedButton(
              child: const Text("Go To Third and remove everything from stack"),
              onPressed: () => Get.offAll(const Third()),
            ),
            const SizedBox(
              height: 100,
            ),
            Text("Data From Fourth Screen: $dataFromFourth"),
            OutlinedButton(
              child: const Text("Return Data from Fourth Screen"),
              onPressed: () async {
                dataFromFourth = await Get.to(const Fourth());
                // setState(() {});
              },
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              child: const Text("Go to Named /fourth with parameter"),
              onPressed: () {
                Get.toNamed("/fourth", arguments: "Passed From Second");
              },
            ),
          ],
        ),
      ),
    );
  }
}
