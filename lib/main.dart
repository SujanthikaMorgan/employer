import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myjobscentre_employee/applicants.dart';
import 'package:myjobscentre_employee/applicantsdetails.dart';
import 'package:myjobscentre_employee/createCompany.dart';
import 'package:myjobscentre_employee/employer.dart';
import 'package:myjobscentre_employee/job.dart';
import 'package:myjobscentre_employee/jobPost.dart';
import 'package:myjobscentre_employee/notselected.dart';
import 'package:myjobscentre_employee/sidemenuEmployer.dart';
import 'package:myjobscentre_employee/widget/dropdownsearchwidget.dart';
import 'package:myjobscentre_employee/widget/jobsWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        initialRoute: DropDownSearchWidget.idScreen,
        routes: {
          SidemenuEmployer.idScreen: (context) => SidemenuEmployer(),
          JobsWidget.idScreen: (context) => JobsWidget(
                jobtype: "Urgent",
              ),
          JobPost.idScreen: (context) => JobPost(),
          Applicants.idScreen: (context) => Applicants(),
          NotSelected.idScreen: (context) => NotSelected(),
          ApplicantDetails.idScreen: (context) => ApplicantDetails(),
          Employer.idScreen: (context) => Employer(),
          Job.idScreen: (context) => Job(),
          CreateCompany.idScreen: (context) => CreateCompany(),
          DropDownSearchWidget.idScreen: (context) => DropDownSearchWidget(),
        },
      ),
      designSize: const Size(360, 690),
    );
  }
}
