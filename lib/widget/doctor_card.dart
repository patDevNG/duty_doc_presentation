import 'package:duty_doctor/feature/doctor_profile/presentation/doctors_profile.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class DoctorCard extends StatelessWidget {
  final String image;
  final String doctorName;
  final String hospitalName;
  final String status;
  final String rating;
  const DoctorCard(
      {Key key,
      @required this.image,
      @required this.doctorName,
      @required this.hospitalName,
      @required this.status,
      @required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DoctorProfile()));
      },
      child: Card(
        elevation: 4,
        child: Container(
          margin: EdgeInsets.only(left: wp(6), right: wp(6)),
          height: hp(20),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.red),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(ImagePath.pat, fit: BoxFit.cover)),
              ),
              SizedBox(width: 20),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: hp(4)),
                      child: Text(
                        "Dr. Okuns Patrick",
                        style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                            color: AppColor.duty_doctorBlack,
                            fontSize: Sizes.HEIGHT_18,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: hp(2)),
                      child: Text(
                        "Heart Surgeon . Mayflower Hospital",
                        style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                            fontSize: 13),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: hp(2)),
                      child: Row(
                        children: [
                          Container(
                            width: 130,
                            height: 30,
                            decoration: BoxDecoration(
                                color: AppColor.duty_doctor_light_yellow,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(child: Text('Available Now')),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Icon(Icons.star,
                                color: AppColor.duty_doctorYellow),
                          ),
                          Container(
                            child: Text('4.3',
                                style: DutyDoctorStyles
                                    .dutyDoctorGreenheaderStyle1(
                                        color: AppColor.duty_doctorBlack,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
