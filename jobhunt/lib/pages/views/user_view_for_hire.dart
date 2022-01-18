// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhunt/controllers/base_controller.dart';

class User_For_hire extends StatefulWidget {
  const User_For_hire({Key? key}) : super(key: key);

  @override
  _User_For_hireState createState() => _User_For_hireState();
}

class _User_For_hireState extends State<User_For_hire> {
  @override
  Widget build(BuildContext context) {
    final BaseController _baseController = Get.find();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Material(
              child: Container(
                width: width,
                height: height * 0.4,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Material(
              elevation: 10,
              color: Colors.transparent,
              child: Container(
                width: width,
                height: height * 0.56,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('Firstname surname'),
                              Text('job'),
                            ],
                          ),
                          CircleAvatar(
                            radius: 30,
                          ),
                        ],
                      ),
                      Text(
                        'sdfsjd vdsjhfsc csudofsnd csncdnsdc ncsdsnc sdcnsdijcs cnsncds dcijsdcnskjdcsjndc cdsncsndckjs csjdcsjncsjhdcs cjsdncsdjnckscdsnd',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Material(
                        elevation: 5,
                        child: Container(
                          width: width * 0.5,
                          height: 50,
                          child: Text('Hire'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
