import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myjobscentre_employee/sidemenuEmployer.dart';
import 'package:myjobscentre_employee/widget/applicantsList_Widget.dart';
import 'package:myjobscentre_employee/widget/endDrawer.dart';

class Applicants extends StatefulWidget {
  static const String idScreen = "applicants";
  const Applicants({Key? key}) : super(key: key);

  @override
  _ApplicantsState createState() => _ApplicantsState();
}

class _ApplicantsState extends State<Applicants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedece8),
      endDrawer: SidemenuEmployer(),
      appBar: AppBar(
          backgroundColor: const Color(0xffedece8), // f7f9fc
          iconTheme: IconThemeData(color: Color(0xffdd312d)),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: Color(0xff1d1d1d)),
              onPressed: () {}),
          title: Column(
            children: [
              Text(
                "27 applicants",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "We're looking for a product manager to",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: const Color(0xff1d1d1d),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ApplicantsListWidget(
                    type: "Pending",
                    amount: "4",
                    clr: Colors.blue.shade900,
                    notify: "4 new"),
                ApplicantsListWidget(
                    type: "Not Selected",
                    amount: "128",
                    clr: Colors.white,
                    notify: " "),
                ApplicantsListWidget(
                    type: "Shortlisted",
                    amount: "128",
                    clr: Colors.white,
                    notify: " "),
                ApplicantsListWidget(
                    type: "Blocked",
                    amount: "128",
                    clr: Colors.white,
                    notify: " "),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: SizedBox(
                height: 40,
                child: EndDrawer(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
