import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myjobscentre_employee/sidemenuEmployer.dart';
import 'package:myjobscentre_employee/widget/applicantbrief.dart';
import 'package:myjobscentre_employee/widget/endDrawer.dart';

class NotSelected extends StatefulWidget {
  static const String idScreen = "NotSelected";
  const NotSelected({Key? key}) : super(key: key);

  @override
  _NotSelectedState createState() => _NotSelectedState();
}

class _NotSelectedState extends State<NotSelected> {
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
        title: Text(
          "Not Selected",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  child: ApplicantBrief(),
                  onTap: () {},
                ),
                GestureDetector(
                  child: ApplicantBrief(),
                  onTap: () {},
                ),
                GestureDetector(
                  child: ApplicantBrief(),
                  onTap: () {},
                ),
                GestureDetector(
                  child: ApplicantBrief(),
                  onTap: () {},
                ),
                GestureDetector(
                  child: ApplicantBrief(),
                  onTap: () {},
                ),
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
