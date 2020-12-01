import 'package:duty_doctor/feature/general_consultion/general_consultation.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class MainSerchPage extends StatefulWidget {
  MainSerchPage({Key key}) : super(key: key);

  @override
  _MainSerchPageState createState() => _MainSerchPageState();
}

class _MainSerchPageState extends State<MainSerchPage> {
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    var width = wp(30);
    var height = hp(15);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.duty_doctorGreen,
        title: Container(
          child: Row(
            children: [
              Container(
                child: Text(
                  'Abuja, Nigeria',
                  style: DutyDoctorStyles.dutyDoctorsStyle(
                      color: AppColor.duty_doctorWhite,
                      textDecoration: TextDecoration.none),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Text(
                    'Edit Location',
                    style: DutyDoctorStyles.dutyDoctorsStyle(
                      color: AppColor.duty_doctorWhite,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              //  height: hp(20),
              margin: EdgeInsets.only(top: 18, left: wp(6), right: wp(6)),
              decoration: BoxDecoration(
                  color: AppColor.duty_doctorWhite,
                  borderRadius: BorderRadius.circular(6)),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(5),
                child: CustomTextFormFieldWithSuffix(
                  textInputType: TextInputType.text,
                  hasPrefixIcon: false,
                  hasSufixIcon: true,
                  suffixIcon: Icon(
                    Icons.search,
                    color: AppColor.duty_doctorBlack,
                  ),
                  border: Borders.outlineBorder,
                  enabledBorder: Borders.noBorder,
                  contentPadding: EdgeInsets.only(left: 10, top: 13),
                  hintText: "Search for Doctors, Speacialists and more ...",
                  focusedBorder: Borders.noBorder,
                  labelStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                  hintTextStyle:
                      DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                  textStyle: DutyDoctorStyles.dutyDoctorsStyle(
                      textDecoration: TextDecoration.none),
                  enabled: true,
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: hp(15), left: wp(6), right: wp(6)),
              child: GridView.count(
                mainAxisSpacing: wp(6),
                crossAxisSpacing: wp(6),
                crossAxisCount: 2,
                childAspectRatio: 1,
                children: [
                  SearCard(
                    title: "General Consultation",
                  ),
                  SearCard(
                    title: "Service Providers",
                  ),
                  SearCard(
                    title: "Personalized Service",
                  ),
                  SearCard(
                    title: "Emergency Services",
                  ),
                  SearCard(
                    title: "HMP plans",
                  ),
                  SearCard(
                    title: "E-Health Store",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearCard extends StatelessWidget {
  final String imagePath;
  final String title;
  const SearCard({Key key, this.imagePath, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(right: wp(6)),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GeneralConsultation()));
            },
            child: Container(
              height: 140,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    ImagePath.splash,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(this.title),
          ),
        ],
      ),
    );
  }
}
