import 'package:duty_doctor/feature/doctors_search_result/presentation/doctor_search_result.dart';
import 'package:duty_doctor/feature/notification/presentation/notification.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_button.dart';
import 'package:duty_doctor/widget/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_screen/responsive_screen.dart';

class GeneralConsultation extends StatefulWidget {
  GeneralConsultation({Key key}) : super(key: key);

  @override
  _GeneralConsultationState createState() => _GeneralConsultationState();
}

class _GeneralConsultationState extends State<GeneralConsultation> {
  String practitioner;
  final dateFormatter = DateFormat('yyyy-MM-dd');
  DateTime selectedDate;
  Future _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  String date;
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.duty_doctorGreen,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColor.duty_doctorWhite),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('General Consultation'),
        actions: [
          IconButton(
              icon: Icon(Icons.notifications, color: AppColor.duty_doctorWhite),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: wp(6), right: wp(6)),
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: hp(5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: hp(1.5)),
                    child: Text(
                      'Type of General Consultation',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    width: wp(100),
                    height: hp(8),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.duty_doctorLightGreen,
                          width: Sizes.WIDTH_1,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(Sizes.SIZE_6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.transparent,
                            offset: Offset(5, 0),
                            blurRadius: 2,
                          )
                        ]),
                    child: DropDownField(
                      hintText: 'Type of General Consultaion',
                      value: practitioner,
                      onChanged: (value) {
                        setState(() {
                          practitioner = value;
                          print(practitioner);
                        });
                      },
                      dataSource: [
                        {
                          "name": "General Practioner",
                          'id': "General Practioner"
                        },
                        {"name": "Specialist", 'id': "Specialist"},
                        {
                          "name": "Get a Second Opinion",
                          'id': "Get a Second Opinion"
                        }
                        // {"name": "Credit", 'id': 'credit'},
                        // {"name": "\u{20A6}", 'id': "Naira"}
                      ],
                      valueField: 'id',
                      textField: 'name',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: hp(3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: hp(1.5)),
                    child: Text(
                      'Service Location Area',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    width: wp(100),
                    height: hp(8),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.duty_doctorLightGreen,
                          width: Sizes.WIDTH_1,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(Sizes.SIZE_6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.transparent,
                            offset: Offset(5, 0),
                            blurRadius: 2,
                          )
                        ]),
                    child: DropDownField(
                      hintText: 'Type of General Consultaion',
                      value: practitioner,
                      onChanged: (value) {
                        setState(() {
                          practitioner = value;
                          print(practitioner);
                        });
                      },
                      dataSource: [
                        {
                          "name": "General Practioner",
                          'id': "General Practioner"
                        },
                        {"name": "Specialist", 'id': "Specialist"},
                        {
                          "name": "Get a Second Opinion",
                          'id': "Get a Second Opinion"
                        }
                        // {"name": "Credit", 'id': 'credit'},
                        // {"name": "\u{20A6}", 'id': "Naira"}
                      ],
                      valueField: 'id',
                      textField: 'name',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: hp(2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(),
                    child: Text(
                      'Check Availability',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                      height: 52,
                      margin: EdgeInsets.only(
                        top: hp(1.5),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.duty_doctorLightGreen,
                            width: Sizes.WIDTH_1,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(Sizes.SIZE_6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(5, 0),
                              blurRadius: 2,
                            )
                          ]),
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            Container(
                              width: wp(77),
                              child: selectedDate == null
                                  ? Text(
                                      'Appiontment Date',
                                      style: DutyDoctorStyles
                                          .dutyDoctorBlackHintTextStyle(),
                                    )
                                  : Center(
                                      child: Text(
                                          '${dateFormatter.format(selectedDate)}')),
                            ),
                            Container(
                              width: wp(4),
                              child: IconButton(
                                  icon: Icon(Icons.arrow_drop_down),
                                  onPressed: () => _selectDate(context)),
                            )
                          ],
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: hp(3)),
                    child: CustomButton(
                      title: 'Search Now',
                      textStyle: DutyDoctorStyles.dutyDoctorsStyle(
                          color: AppColor.duty_doctorWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      color: AppColor.duty_doctorGreen,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorSearchResult()));
                      },
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
