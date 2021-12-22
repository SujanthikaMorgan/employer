import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myjobscentre_employee/sidemenuEmployer.dart';
import 'package:myjobscentre_employee/widget/categoryitem.dart';
import 'package:myjobscentre_employee/widget/endDrawer.dart';
import 'package:myjobscentre_employee/widget/jobsWidget.dart';

class JobPost extends StatefulWidget {
  static const String idScreen = "jobsPost";
  const JobPost({Key? key}) : super(key: key);

  @override
  _JobPostState createState() => _JobPostState();
}

class _JobPostState extends State<JobPost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff7f9fc),
        endDrawer: SidemenuEmployer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xffdd312d)),
          backgroundColor: const Color(0xfff7f9fc),
          elevation: 0,
          titleSpacing: 0,
          leading: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                bottom: 10,
                right: 10,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Center(
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 20.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            "My Jobs",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18.sp,
              color: const Color(0xff1d1d1d),
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.left,
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      SizedBox(width: 15.w),
                      CategoryItem(
                          catDisplay: "Live", bgcolor: Colors.green.shade400),
                      SizedBox(
                        width: 10.w,
                      ),
                      CategoryItem(
                          catDisplay: "Expired", bgcolor: Colors.red.shade700),
                      SizedBox(
                        width: 10.w,
                      ),
                      CategoryItem(
                          catDisplay: "Pending",
                          bgcolor: Colors.orange.shade400),
                      SizedBox(
                        width: 10.w,
                      ),
                      CategoryItem(
                          catDisplay: "Closed", bgcolor: Colors.grey.shade600),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      CategoryItem(
                          catDisplay: "Resubmitted",
                          bgcolor: Colors.blue.shade400),
                      SizedBox(
                        width: 120.w,
                      ),
                      Text(
                        "Post a Job",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Poppins',
                          fontSize: 17.sp,
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          height: 1.4166666666666667.h,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        JobsWidget(
                          jobtype: " ",
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        JobsWidget(
                          jobtype: "Urgent",
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        JobsWidget(
                          jobtype: "Urgent",
                        ),
                      ],
                    )),
              ],
            )),
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
      ),
    );
  }
}
