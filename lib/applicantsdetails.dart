import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myjobscentre_employee/sidemenuEmployer.dart';
import 'package:myjobscentre_employee/widget/applicantbrief.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myjobscentre_employee/widget/endDrawer.dart';
import 'package:myjobscentre_employee/widget/exp.dart';

class ApplicantDetails extends StatefulWidget {
  static const String idScreen = "applicantsDetails";
  const ApplicantDetails({Key? key}) : super(key: key);

  @override
  _ApplicantDetailsState createState() => _ApplicantDetailsState();
}

class _ApplicantDetailsState extends State<ApplicantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9fc),
      endDrawer: SidemenuEmployer(),
      appBar: AppBar(
        backgroundColor: const Color(0xfff7f9fc), // f7f9fc
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
                ApplicantBrief(),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Container(
                        width: 150.w,
                        height: 35.h,
                        color: Colors.grey.shade800,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25.sp,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Follow",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Container(
                        width: 150.w,
                        height: 35.h,
                        color: Colors.red.shade700,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              "Chat or Call",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.white,
                              size: 25.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 15,
                    ),
                    child: Text(
                      "Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do.About Every Kind Of Writing You Do.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Poppins',
                        fontSize: 13.sp,
                        color: const Color(0xcc1d1d1d),
                        fontWeight: FontWeight.w400,
                        height: 1.4166666666666667.h,
                      ),
                      textHeightBehavior: const TextHeightBehavior(
                          applyHeightToFirstAscent: false),
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 15,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50.h,
                    color: Colors.grey.shade300,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40.w,
                        ),
                        SizedBox(
                          width: 15.w,
                          height: 20.h,
                          child: SvgPicture.string(
                            badge,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "Experiences",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            color: const Color(0xcc1d1d1d),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Exp(),
                // Exp(),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 40),
                  child: Row(
                    children: [
                      Container(
                        width: 150.w,
                        height: 35.h,
                        color: Colors.grey.shade200,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 50),
                          child: GestureDetector(
                            child: Text(
                              "Reject",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      Container(
                        width: 150.w,
                        height: 35.h,
                        color: Colors.green.shade400,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 50),
                          child: GestureDetector(
                            child: Text(
                              "Shortlist",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                )
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

const String badge =
    '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 512 512"><rect x="0" y="0" width="512" height="512" fill="none" stroke="none" /><path fill="red" d="M328.375 384l3.698 74.999l-75.862-52.719l-76.287 52.769L183.625 384h-32.039l-5.522 112h36.692l73.413-50.78L329.242 496h36.694l-5.522-112h-32.039z"/><path fill="red" d="M415.409 154.914l-2.194-48.054L372.7 80.933l-25.932-40.519l-48.055-2.2L256 16.093l-42.713 22.126l-48.055 2.2L139.3 80.933L98.785 106.86l-2.194 48.054l-22.127 42.714l22.127 42.715l2.2 48.053l40.509 25.927l25.928 40.52l48.055 2.195L256 379.164l42.713-22.126l48.055-2.195l25.928-40.52l40.518-25.923l2.195-48.053l22.127-42.715zm-31.646 76.949L382 270.377l-32.475 20.78l-20.78 32.475l-38.515 1.76L256 343.125l-34.234-17.733l-38.515-1.76l-20.78-32.475L130 270.377l-1.759-38.514l-17.741-34.235l17.737-34.228L130 124.88l32.471-20.78l20.78-32.474l38.515-1.76L256 52.132l34.234 17.733l38.515 1.76l20.78 32.474L382 124.88l1.759 38.515l17.741 34.233z"/></svg>';
