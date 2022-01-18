// ignore_for_file: camel_case_types, prefer_const_constructors, sized_box_for_whitespace, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhunt/controllers/base_controller.dart';
import 'package:jobhunt/pages/utils/resuable_widgets.dart';

class default_home extends StatefulWidget {
  const default_home({Key? key}) : super(key: key);

  @override
  _default_homeState createState() => _default_homeState();
}

class _default_homeState extends State<default_home>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BaseController _baseController = Get.find();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GetTabView(_tabController, width, height),
      bottomNavigationBar: GetNavbar(_tabController, context, width, height),
    );
  }
}
