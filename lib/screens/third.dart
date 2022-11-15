import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'home.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Third Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () => Get.offAll(const Home()),
              child: const Text("Go To Home"),
            )
          ],
        ),
      ),
    );
  }
}
