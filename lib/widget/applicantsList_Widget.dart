// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicantsListWidget extends StatelessWidget {
  final String type;
  final String amount;
  final Color clr;
  final String notify;

  const ApplicantsListWidget(
      {Key? key,
      required this.type,
      required this.amount,
      required this.clr,
      required this.notify})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 115.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(5.r)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    type,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 170),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: clr,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Text(
                          notify,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.7,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    amount,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 30),
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    child: const Image(image: AssetImage("assets/blk.png")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 30),
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    child: const Image(image: AssetImage("assets/blk.png")),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
