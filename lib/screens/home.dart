import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  _showSnackBar() {
    Get.snackbar(
      "Hey There",
      "Snackbar is easy",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  _showDialog() {
    Get.defaultDialog(
      title: "Simple Dialog",
      content: const Text("Too Easy"),
    );
  }

  _showBottomSheet() {
    Get.bottomSheet(
      Wrap(
        children: <Widget>[
          ListTile(
              leading: const Icon(Icons.music_note),
              title: const Text('Music'),
              onTap: () => {}),
          ListTile(
            leading: const Icon(Icons.videocam),
            title: const Text('Video'),
            onTap: () => {},
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Package | Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              child: const Text("Go To Second"),
              onPressed: () => Get.to(
                () => const Second(),
                arguments: {
                  "one": "Go to Third and remove this screen from stack"
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              child: const Text("Name Route: /second"),
              onPressed: () {
                Get.toNamed("/second");
              },
            ),
            OutlinedButton(
              child: const Text("_showSnackBar"),
              onPressed: () => _showSnackBar(),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              child: const Text("_showSnackBar"),
              onPressed: () => _showSnackBar(),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              child: const Text("_showDialog"),
              onPressed: () => _showDialog(),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
              child: const Text("_showBottomSheet"),
              onPressed: () => _showBottomSheet(),
            ),
          ],
        ),
      ),
    );
  }
}
