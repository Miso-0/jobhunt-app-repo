// ignore_for_file: camel_case_types, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:jobhunt/controllers/base_controller.dart';
import 'package:jobhunt/pages/utils/resuable_widgets.dart';

class home_tab extends StatefulWidget {
  const home_tab({Key? key}) : super(key: key);

  @override
  _home_tabState createState() => _home_tabState();
}

class _home_tabState extends State<home_tab> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final BaseController _baseController = Get.find();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var or = MediaQuery.of(context).orientation;
    return Scaffold(
      drawer: SafeArea(
        child: Container(
          width: width * 0.6,
          height: height,
          color: Colors.white,
          child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.red,
                          ),
                          Text(
                            'Firstname Surname',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Material(
                      child: Container(
                        width: width * 0.6,
                        height: height * 0.05,
                        color: Theme.of(context).primaryColorLight,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dark mode',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Switch(
                                value: _baseController.isDarkMode.value,
                                onChanged: (value) {
                                  _baseController.ChangeThemeMode();
                                  value = _baseController.isDarkMode.value;
                                }),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      child: Container(
                        width: width * 0.6,
                        height: height * 0.05,
                        color: Colors.blue,
                        child: Row(
                          children: [Icon(Icons.home), Text('Home')],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      key: _globalKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _globalKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(
          'Jobhunt',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // _baseController.ChangeThemeMode();
              Get.toNamed('/user_view');
            },
            icon: Icon(Icons.change_circle,
                color: Theme.of(context).iconTheme.color),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Material(
                color: Colors.transparent,
                child: Container(
                  width: width,
                  // color: Colors.black,
                  child: Column(
                    children: [
                      Material(
                        elevation: 5,
                        color: Colors.transparent,
                        child: Container(
                          width: width * 0.8,
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue.shade900),
                          ),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // margin: EdgeInsets.only(top: 10),
                                  width: width * 0.67,
                                  child: TextField(
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Search on jobhunt'),
                                  ),
                                ),
                                IconButton(
                                  constraints: BoxConstraints(),
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    if (kDebugMode) {
                                      print(or);
                                    }
                                  },
                                  icon: Icon(
                                    Icons.search,
                                    color: Theme.of(context).iconTheme.color,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return jobcard(_baseController.jobs[index], width, context);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
