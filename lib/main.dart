import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/fourth.dart';
import 'screens/home.dart';
import 'screens/second.dart';
import 'screens/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Home(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.purpleAccent),
      ),
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/second', page: () => const Second()),
        GetPage(
          name: '/third',
          page: () => const Third(),
          transition: Transition.zoom,
        ),
        GetPage(name: "/fourth", page: () => const Fourth()),
      ],
    );
  }
}
