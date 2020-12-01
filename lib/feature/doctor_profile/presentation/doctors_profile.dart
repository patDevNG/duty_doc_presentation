import 'package:duty_doctor/feature/chats/presentation/chats.dart';
import 'package:duty_doctor/feature/chats/presentation/video.dart';
import 'package:duty_doctor/feature/chats/presentation/voice_call.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/safe_area.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:responsive_screen/responsive_screen.dart';

class DoctorProfile extends StatefulWidget {
  DoctorProfile({Key key}) : super(key: key);

  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return ColoredSafeArea(
      color: AppColor.duty_doctorGreen,
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: hp(40),
              decoration: BoxDecoration(
                  color: AppColor.duty_doctorGreen,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: IconButton(
                              icon: Icon(Icons.arrow_back,
                                  color: AppColor.duty_doctorWhite),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                        Container(
                          child: IconButton(
                              icon: Icon(
                                Icons.notifications,
                                color: AppColor.duty_doctorWhite,
                              ),
                              onPressed: null),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: wp(6), top: hp(2)),
                    child: Row(
                      children: [
                        Container(
                          // margin: EdgeInsets.only(top: hp(4)),
                          height: 80,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(ImagePath.pat,
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 20),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Dr. Okuns Patrick",
                                  style: DutyDoctorStyles
                                      .dutyDoctorBlackSubHeaderStyle(
                                          color: AppColor.duty_doctorWhite,
                                          fontSize: Sizes.HEIGHT_18,
                                          fontWeight: FontWeight.w400),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: hp(0)),
                                child: Text(
                                  "MBBS,FCPS - General Practioner",
                                  style:
                                      DutyDoctorStyles.dutyDoctorSmallTextStyle(
                                          fontSize: 11,
                                          color: AppColor.duty_doctorWhite,
                                          fontWeight: FontWeight.normal),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.star,
                                        color: AppColor.duty_doctorYellow,
                                        size: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text('4.3',
                                          style: DutyDoctorStyles
                                              .dutyDoctorGreenheaderStyle1(
                                            color: AppColor.duty_doctorWhite,
                                            fontSize: 11,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                    Container(
                                      child: IconButton(
                                          icon: Icon(
                                              Icons.local_hospital_rounded,
                                              color: AppColor.duty_doctorWhite),
                                          onPressed: null),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                      child: Text(
                                        'Kalyin Specialist Hospital',
                                        style: DutyDoctorStyles
                                            .dutyDoctorSmallTextStyle(
                                                fontSize: 11),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color:Colors.yellow,
                    margin:
                        EdgeInsets.only(left: wp(6), top: hp(1), right: wp(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 170,
                            height: 28,
                            decoration: BoxDecoration(
                                color: AppColor.duty_doctorWhite,
                                borderRadius: BorderRadius.circular(5)),
                            child: Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    child: Text(
                                      "Book Appointment",
                                      style: DutyDoctorStyles
                                          .dutyDoctorGreenheaderStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: AppColor.duty_doctorWhite,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.chat_sharp,
                                          size: 17,
                                          color: AppColor.duty_doctorGreen,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ChatsPage()));
                                        })),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: AppColor.duty_doctorWhite,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.phone,
                                          size: 17,
                                          color: AppColor.duty_doctorGreen,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      VoiceCall()));
                                        })),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: AppColor.duty_doctorWhite,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.video_call,
                                          size: 17,
                                          color: AppColor.duty_doctorGreen,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      VideoCall()));
                                        })),
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
                offset: Offset(0.0, -60),
                child: Container(
                  width: wp(100),
                  margin: EdgeInsets.only(left: wp(6), right: wp(6)),
                  height: hp(30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 50,
                          top: 70,
                          child: Container(
                            height: 70,
                            width: 200,
                            child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                    margin: EdgeInsets.only(
                                        top: 7, bottom: 7, left: 7, right: 7),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Text(
                                                    "BluePearl Pet Hospital"),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ))),
                          ))
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.only(left: wp(6), right: wp(6)),
              // height: hp(20),
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text('About',
                        style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                            fontSize: 15)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: hp(2)),
                    child: ReadMoreText(
                      'Dr. Emeka Ubani is a general practitioner in Abuja Nigeria and is affiliated with multiple hospitals in the area. He received his medical degree from Duke University School of Medicine and …',
                      trimMode: TrimMode.Line,
                      trimLines: 2,
                      colorClickableText: AppColor.duty_doctorGreen,
                      trimCollapsedText: '  Read More',
                    ),
                  )
                ],
              )),
            ),
            Container(
              margin: EdgeInsets.only(left: wp(6), right: wp(6), top: hp(3)),
              height: hp(15),
              width: wp(100),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(ImagePath.pat, fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(ImagePath.pat, fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(ImagePath.pat, fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(ImagePath.pat, fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(ImagePath.pat, fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(ImagePath.pat, fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(ImagePath.pat, fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: wp(6), right: wp(6), top: hp(6)),
              child: Text('Top Reviews by Patients',
                  style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                      fontSize: 15)),
            ),
            Container(
              margin: EdgeInsets.only(left: wp(6), right: wp(6), top: hp(3)),
              height: hp(30),
              width: wp(100),
              // color:Colors.red,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: hp(30),
                    width: wp(65),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        margin: EdgeInsets.only(
                            left: wp(4), right: wp(4), top: hp(3)),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Audrey G.'),
                                  ),
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15)
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: hp(3)),
                                child: RichText(
                                    text: TextSpan(
                                        text:
                                            'I am very active and with that has come my share of mishaps. Dr Marget explains exactly what is wrong and how we are going to repair. I sincerely trust…',
                                        style: DutyDoctorStyles
                                            .dutyDoctorSmallTextStyle(
                                                color: AppColor
                                                    .duty_doctorBlack))))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wp(6),
                  ),
                  Container(
                    height: hp(30),
                    width: wp(65),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        margin: EdgeInsets.only(
                            left: wp(4), right: wp(4), top: hp(3)),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Audrey G.'),
                                  ),
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15)
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: hp(3)),
                                child: RichText(
                                    text: TextSpan(
                                        text:
                                            'I am very active and with that has come my share of mishaps. Dr Marget explains exactly what is wrong and how we are going to repair. I sincerely trust…',
                                        style: DutyDoctorStyles
                                            .dutyDoctorSmallTextStyle(
                                                color: AppColor
                                                    .duty_doctorBlack))))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wp(6),
                  ),
                  Container(
                    height: hp(30),
                    width: wp(65),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        margin: EdgeInsets.only(
                            left: wp(4), right: wp(4), top: hp(3)),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text('Audrey G.'),
                                  ),
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15),
                                      Icon(Icons.star,
                                          color: AppColor.duty_doctorYellow,
                                          size: 15)
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: hp(3)),
                                child: RichText(
                                    text: TextSpan(
                                        text:
                                            'I am very active and with that has come my share of mishaps. Dr Marget explains exactly what is wrong and how we are going to repair. I sincerely trust…',
                                        style: DutyDoctorStyles
                                            .dutyDoctorSmallTextStyle(
                                                color: AppColor
                                                    .duty_doctorBlack))))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: wp(8),
            )
          ],
        ),
      ),
    );
  }
}
