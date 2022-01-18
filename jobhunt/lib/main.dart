// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:jobhunt/pages/views/default_home.dart';
import 'package:jobhunt/pages/views/new_job.dart';
import 'package:jobhunt/pages/views/user_view_for_hire.dart';
import 'package:jobhunt/themes/themes.dart';

import 'controllers/base_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _baseController = Get.put(BaseController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        darkTheme: jobhuntThemes.darkTheme,
        theme: jobhuntThemes.lightTheme,
        themeMode: _baseController.themeMode,
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        getPages: [
          GetPage(name: '/home', page: () => default_home()),
          GetPage(name: '/AddJob', page: () => add_job()),
          GetPage(name: '/user_view', page: () => User_For_hire()),
        ],
      ),
    );
  }
}
