// ignore_for_file: prefer_const_constructors, unused_local_variable, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobhunt/controllers/base_controller.dart';

class add_job extends StatelessWidget {
  const add_job({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BaseController _baseController = Get.find();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'New job',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Company information',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: TextField(
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: InputDecoration(
                      hintText: 'Company name',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: TextField(
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: InputDecoration(
                      hintText: 'Webiste link',
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width * 0.7,
                        child: TextField(
                          style: Theme.of(context).textTheme.bodyText1,
                          decoration: InputDecoration(
                            hintText: 'Location(Optional)',
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 0)),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 10,
                        color: Colors.transparent,
                        child: Container(
                          width: width * 0.18,
                          height: height * 0.08,
                          child: Center(
                            child: Icon(
                              Icons.map_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorDark,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Job information',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: TextField(
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: InputDecoration(
                      hintText: 'Title',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: TextField(
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: InputDecoration(
                      hintText: 'Deadline',
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: TextField(
                    style: Theme.of(context).textTheme.bodyText1,
                    decoration: InputDecoration(
                      hintText: 'Number of vacancies',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: TextField(
                    style: Theme.of(context).textTheme.bodyText1,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Description',
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: width,
                  child: TextField(
                    style: Theme.of(context).textTheme.bodyText1,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Requirments',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
    );
  }
}
