import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_jobs_center/Screens/widget/basicmembership.dart';
import 'package:my_jobs_center/Screens/widget/businessmembership.dart';
import 'package:my_jobs_center/Screens/widget/professionalmembership.dart';
import 'package:card_swiper/card_swiper.dart';

class MembershipPage extends StatefulWidget {
  static const String idScreen = "Membership";
  const MembershipPage({Key? key}) : super(key: key);

  @override
  _MembershipPageState createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {
  final Screens = [
BasicMembership(),
    ProfessionalMembership(),
    BusinessMembership()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25,
            ),
            onTap: () {},
          ),
          title:Text(
            "Membership Plans",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: const Color(0xff1d1d1d),
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Stack(
              children: [
                Swiper(
                  // layout: SwiperLayout.TINDER,
                  itemCount: Screens.length,
                    itemWidth: 600,
                    itemHeight: 1000,
                    itemBuilder: (context, index) {
                      return new Container(
                          width: 600,
                          height: 900,
                          color: Colors.black,
                          child: Screens[index]);
                    },
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
