import 'package:flutter/material.dart';
import 'package:flutter_finger_print/screen/home/view/home_screen.dart';
import 'package:flutter_finger_print/screen/home/view/second.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    getPages: [
      GetPage(
        name: '/',
        page: () => HomeScreen(),
      ),
      GetPage(name:'/sec', page: () => Sec(),)
    ],
  ));
}
