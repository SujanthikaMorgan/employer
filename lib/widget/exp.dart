import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Exp extends StatelessWidget {
  const Exp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250.h,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 250),
              child: Text(
                "Blue Box Studios",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Poppins',
                  fontSize: 13.sp,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                ),
                textHeightBehavior:
                    const TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290, top: 10),
              child: Text(
                "Manager",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Poppins',
                  fontSize: 16.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                textHeightBehavior:
                    const TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 17, right: 15),
              child: Text(
                "Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  height: 1.4166666666666667.h,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 285,
                ),
                child: GestureDetector(
                  child: Text(
                    "Read more",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Icon(
                    Icons.calendar_view_month,
                    color: Colors.black,
                    size: 15.sp,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "2018 - present",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Poppins',
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  SizedBox(
                    width: 30.w,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 15.sp,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "London",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Poppins',
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
