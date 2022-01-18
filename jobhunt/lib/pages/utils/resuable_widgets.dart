// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:jobhunt/pages/tabs/documents_tab.dart';

import 'package:jobhunt/pages/tabs/home_tab.dart';
import 'package:jobhunt/pages/tabs/profile.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

Container GetNavbar(TabController tabController, BuildContext context,
        double width, double height) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: TabBar(
        controller: tabController,
        indicator: MaterialIndicator(color: Colors.white),
        labelColor: Colors.white,
        tabs: [
          Tab(
            icon: Icon(
              Icons.home,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.file_copy,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );

Container GetTabView(
        TabController tabController, double width, double height) =>
    Container(
      child: TabBarView(
        controller: tabController,
        children: [
          home_tab(),
          documents_tab(),
          profile(),
        ],
      ),
    );

Material jobcard(String title, double width, BuildContext context) => Material(
      color: Colors.transparent,
      elevation: 10,
      shadowColor: Colors.black,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: width,
        height: 200,
        child: Text(title),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
