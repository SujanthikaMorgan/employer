import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:myjobscentre_employee/sidemenuEmployer.dart';
import 'package:myjobscentre_employee/widget/formwidget.dart';
import 'package:myjobscentre_employee/widget/pallette.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Job extends StatefulWidget {
  static const String idScreen = "job";
  const Job({Key? key}) : super(key: key);

  @override
  _JobState createState() => _JobState();
}

class _JobState extends State<Job> {

  bool isChecked = false;
  bool value=false;
  int val=0;
  String compname = '[+] New Company';
  var companies = [
    '[+] New Company'
  ];
  String salarytype = 'Per Hour Salary';
  var types = [
    'Per Hour Salary',
    'Per Day Salary',
    'Per Week Salary',
    'Per Month Salary',
    'Per Year Salary',
  ];
  formWidget (ic){
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.black, width: 5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.black, width: 3),
            ),
            labelStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            // suffixStyle: TextStyle(fontSize: 15),
            suffixIconConstraints: BoxConstraints(
                minHeight: 25, minWidth: 25, maxHeight: 25, maxWidth: 25),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: SvgPicture.string(
                  ic,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      return Colors.grey;
    }

    return Scaffold(
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
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          "Post a Job",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: const Color(0xff1d1d1d),
            fontWeight: FontWeight.w500,
            //fontStyle: FontStyle.italic,
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
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 22,
                        child: SvgPicture.string(
                          company,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Company Information",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 310, top: 15),
                  child: Text(
                    "Company *",
                    style: formtext,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 3),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        // suffixStyle: TextStyle(fontSize: 15),

                        suffixIcon: DropdownButton(
                          value: compname,
                          icon: Icon(
                            Icons.arrow_drop_down,
                          ),
                          items: companies.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {});
                          },
                        ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 260, top: 10),
                  child: Text(
                    "Company Name*",
                    style: formtext,
                  ),
                ),
                FormWidget(
                  ic: '',
                ),
                Padding(
                  padding: EdgeInsets.only(right: 360, top: 10),
                  child: Text(
                    "Logo",
                    style: formtext,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Container(
                        height: 50,
                        width: 160,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                                width: 1.0, color: const Color(0xffdd312d)),

                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Upload Logo",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: const Color(0xffdd312d),
                              letterSpacing: 0.7000000000000001,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Use 200x200px size for \nbetter view.",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: Colors.grey,
                          letterSpacing: 0.7000000000000001,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 210, top: 15),
                  child: Text(
                    "Company Description *",
                    style: formtext,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 3),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        )),
                    maxLines: 20,
                    minLines: 3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 22,
                        child: SvgPicture.string(
                          suitcase,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Job Details",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              width: 1.0, color: const Color(0xffdd312d)),
                          elevation: 10.0,
                          primary: Color(0xffdd312d),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.string(
                                  tick,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Choose Category",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                  color: Colors.white,
                                  letterSpacing: 0.7000000000000001,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 355, top: 15),
                  child: Text(
                    "Title *",
                    style: formtext,
                  ),
                ),
                FormWidget(ic: ''),
                Padding(
                  padding: EdgeInsets.only(right: 350, top: 10),
                  child: Text(
                    "Image",
                    style: formtext,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Container(
                        height: 50,
                        width: 160,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                                width: 1.0, color: const Color(0xffdd312d)),

                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Upload Image",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: const Color(0xffdd312d),
                              letterSpacing: 0.7000000000000001,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Use 200x200px size for \nbetter view.",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          color: Colors.grey,
                          letterSpacing: 0.7000000000000001,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 290, top: 15),
                  child: Text(
                    "Description *",
                    style: formtext,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 3),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        )),
                    maxLines: 100,
                    minLines: 3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 310, top: 15),
                  child: Text(
                    "Job Type *",
                    style: formtext,
                  ),
                ),
                FormWidget(
                  ic: '',
                ),
                Padding(
                  padding: EdgeInsets.only(right: 350, top: 15),
                  child: Text(
                    "Salary",
                    style: formtext,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Container(
                          width: 180,
                          height: 60,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 3),
                              ),
                              labelText: 'Min',
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              suffixText: 'Rs',
                              suffixStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Container(
                          width: 180,
                          height: 60,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 3),
                              ),
                              labelText: 'Max',
                              labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              suffixText: 'Rs',
                              suffixStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(
                    12,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black, width: 5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black, width: 3),
                      ),

                      suffixIcon: DropdownButton(
                        value: salarytype,

                        icon: Icon(
                          Icons.arrow_drop_down,
                        ),
                        items: types.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Negotiable", style: formtext)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 270, top: 15),
                  child: Text(
                    "Phone Number",
                    style: formtext,
                  ),
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),

                    ),
                  ),
                  initialCountryCode: 'SL',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                //FormWidget(ic: ''),

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Hide from users", style: formtext)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 270, top: 15),
                  child: Text(
                    "City *",
                    style: formtext,
                  ),
                ),
                formWidget(''),
                Padding(
                  padding: EdgeInsets.only(right: 270, top: 15),
                  child: Text(
                    "Tags",
                    style: formtext,
                  ),
                ),
                formWidget(''),
                Padding(
                  padding: EdgeInsets.only(right: 190, top: 5),
                  child: Text(
                    "Enter the tags separated by commas",
                    style:  TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Row(
                    children: [
                     Icon(
                       Icons.person_outline,
                       color: Color(0xffdd312d),
                       size: 30,
                     ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("User Details",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 270, top: 15),
                  child: Text(
                    "Full Name *",
                    style: formtext,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 3),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.blueGrey,
                          size: 25,
                        )
                        // suffixStyle: TextStyle(fontSize: 15),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 270, top: 15),
                  child: Text(
                    "Email Address *",
                    style: formtext,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black, width: 3),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(
                          Icons.mail_outline_outlined,
                          color: Colors.blueGrey,
                          size: 25,
                        )
                      // suffixStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bolt_outlined,
                        color: Color(0xffdd312d),
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Make your job premium (optional)",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10, top: 15),
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("Free Job"),
                        leading: Radio(
                          value: 1,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value as int;
                            });
                          },
                          activeColor: Colors.red,
                        ),
                      ),
                       Text(
                        "Your job will go live after check by reviewer",

                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      ListTile(
                        title: Text("Premium"),
                        leading: Radio(
                          value: 1,
                          groupValue: val,
                          onChanged: (value) {
                            setState(() {
                              val = value as int;
                            });
                          },
                          activeColor: Colors.red,
                        ),
                      ),
                    ],
                  )
                ),


                Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 10),
                    child: Container(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 1.0, color: Colors.white),
                          elevation: 10.0,
                          primary: const Color(0xffdd312d),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Post a Job",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 0.7000000000000001,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

String company =
    '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><rect x="0" y="0" width="24" height="24" fill="none" stroke="none" /><path d="M6 2h12a2 2 0 0 1 2 2v18H4V4a2 2 0 0 1 2-2zm0 18h4v-4h4v4h4V4H6v16zm7-14h3v3h-3V6zm-5 5h3v3H8v-3zm5 0h3v3h-3v-3zM8 6h3v3H8V6z" fill="#dd312d" fill-rule="nonzero"/></svg>';
String suitcase =
    // '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><rect x="0" y="0" width="24" height="24" fill="none" stroke="none" /><path d="M19 6.5h-3v-1a3 3 0 0 0-3-3h-2a3 3 0 0 0-3 3v1H5a3 3 0 0 0-3 3v9a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3v-9a3 3 0 0 0-3-3zm-9-1a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v1h-4zm10 13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-5.05h3v1.05a1 1 0 0 0 2 0v-1.05h6v1.05a1 1 0 0 0 2 0v-1.05h3zm0-7H4v-2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1z" fill="#dd312d"/></svg>';
    '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" width="1.17em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 1792 1536"><rect x="0" y="0" width="1792" height="1536" fill="none" stroke="none" /><path d="M640 256h512V128H640v128zm-352 0v1280h-64q-92 0-158-66T0 1312V480q0-92 66-158t158-66h64zm1120 0v1280H384V256h128V96q0-40 28-68t68-28h576q40 0 68 28t28 68v160h128zm384 224v832q0 92-66 158t-158 66h-64V256h64q92 0 158 66t66 158z" fill="#dd312d"/></svg>';
String tick =
    '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 15 15"><rect x="0" y="0" width="15" height="15" fill="none" stroke="none" /><g fill="none"><path d="M4 7.5L7 10l4-5m-3.5 9.5a7 7 0 1 1 0-14a7 7 0 0 1 0 14z" stroke="white"/></g></svg>';
