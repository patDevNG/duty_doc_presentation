import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class DoctorSearchResult extends StatefulWidget {
  DoctorSearchResult({Key key}) : super(key: key);

  @override
  _DoctorSearchResultState createState() => _DoctorSearchResultState();
}

class _DoctorSearchResultState extends State<DoctorSearchResult> {
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "General Consultation",
          style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
              color: AppColor.duty_doctorWhite, fontSize: 16),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: AppColor.duty_doctorGreen,
        actions: [
          IconButton(
              icon: Icon(Icons.notifications, color: AppColor.duty_doctorWhite),
              onPressed: null)
        ],
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(left: wp(3), right: wp(3), top:hp(3)),
              child: DoctorCard(
                  image: 'null',
                  doctorName: "null",
                  hospitalName: "null",
                  status: "null",
                  rating: "null")
                  ),
                  Container(
              margin: EdgeInsets.only(left: wp(3), right: wp(3), top:hp(3)),
              child: DoctorCard(
                  image: 'null',
                  doctorName: "null",
                  hospitalName: "null",
                  status: "null",
                  rating: "null")
                  ),
                  Container(
              margin: EdgeInsets.only(left: wp(3), right: wp(3), top:hp(3)),
              child: DoctorCard(
                  image: 'null',
                  doctorName: "null",
                  hospitalName: "null",
                  status: "null",
                  rating: "null")
                  ),
                  Container(
              margin: EdgeInsets.only(left: wp(3), right: wp(3), top:hp(3)),
              child: DoctorCard(
                  image: 'null',
                  doctorName: "null",
                  hospitalName: "null",
                  status: "null",
                  rating: "null")
                  ),
                  Container(
              margin: EdgeInsets.only(left: wp(3), right: wp(3), top:hp(3)),
              child: DoctorCard(
                  image: 'null',
                  doctorName: "null",
                  hospitalName: "null",
                  status: "null",
                  rating: "null")
                  ),
                  Container(
              margin: EdgeInsets.only(left: wp(3), right: wp(3), top:hp(3)),
              child: DoctorCard(
                  image: 'null',
                  doctorName: "null",
                  hospitalName: "null",
                  status: "null",
                  rating: "null")
                  ),
                  Container(
              margin: EdgeInsets.only(left: wp(3), right: wp(3), top:hp(3)),
              child: DoctorCard(
                  image: 'null',
                  doctorName: "null",
                  hospitalName: "null",
                  status: "null",
                  rating: "null")
                  ),
                  Container(
              margin: EdgeInsets.only(left: wp(3), right: wp(3), top:hp(3)),
              child: DoctorCard(
                  image: 'null',
                  doctorName: "null",
                  hospitalName: "null",
                  status: "null",
                  rating: "null")
                  ),
        ],
      ),
    );
  }
}
