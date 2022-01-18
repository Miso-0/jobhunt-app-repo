// ignore_for_file: non_constant_identifier_names

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhunt/logic/models/job_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

class BaseController extends GetxController {
  var isDarkMode = false.obs;
  var isList = false.obs;

  var jobs = [].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    setMode();
    loadjobs();

    super.onInit();
  }

  Future SavePreference(bool value) async {
    final pref = await SharedPreferences.getInstance();
    pref.setBool('IsDarkMode', value);
  }

  Future setMode() async {
    final pref = await SharedPreferences.getInstance();
    if (pref.getBool('IsDarkMode') != null) {
      isDarkMode(pref.getBool('IsDarkMode'));
    }
  }

//firebase logic
  final _database = FirebaseDatabase.instance.reference();

  Future<void> NewJob(jobModel model) async {
    isLoading(true);
    await _database
        .child('jobs')
        .push()
        .set(model.toMap())
        .then((value) => isLoading(false));
  }

  loadjobs() {
    jobs.add('Job');
    jobs.add('Job');
    jobs.add('Job');
    jobs.add('Job');
    jobs.add('Job');
    jobs.add('Job');
    jobs.add('Job');

    jobs.add('Job');
    jobs.add('Job');

    jobs.add('Job');
    jobs.add('Job');
    jobs.add('Job');
  }

  void ChangeThemeMode() {
    if (isDarkMode.value) {
      isDarkMode(false);
    } else {
      isDarkMode(true);
    }
    SavePreference(isDarkMode.value);
  }

  ThemeMode get themeMode =>
      isDarkMode.value ? ThemeMode.dark : ThemeMode.light;
}
