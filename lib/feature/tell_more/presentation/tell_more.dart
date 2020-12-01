
import 'package:duty_doctor/feature/uploading/presentation/uploading.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_button.dart';
import 'package:duty_doctor/widget/custom_textfield.dart';
import 'package:duty_doctor/widget/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:responsive_screen/responsive_screen.dart';

class TellMorePage extends StatefulWidget {
  TellMorePage({Key key}) : super(key: key);

  @override
  _TellMorePageState createState() => _TellMorePageState();
}

class _TellMorePageState extends State<TellMorePage> {
  final dateFormatter = DateFormat('yyyy-MM-dd');
   DateTime selectedDate ;
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
  String gender;
  String date;
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          width: wp(100),
          height: hp(100),
          child: Stack(
            children: [
              Positioned.fill(
                     top: hp(-7),
                     
                     left: wp(60),
                     child: SvgPicture.asset(
                       ImagePath.registrationBg,alignment: Alignment.topRight,)
                       ),
                        
                                                Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: wp(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                          margin: EdgeInsets.only(top: hp(10)),
                          child: Text("Create Account",
                              style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(
                                  color: Color(0xff06163A),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500)),
                    ),
                    Container(
                          margin: EdgeInsets.only(top: hp(4)),
                          child: CustomTextFormField(
                            textInputType: TextInputType.text,
                            border: Borders.outlineBorder,
                            enabledBorder: Borders.outlineEnabledBorder,
                            hintText: "First Name",
                            focusedBorder: Borders.outlineFocusedBorder,
                            labelStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            hintTextStyle:
                                DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                            textStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            enabled: true,
                          ),
                    ),
                    Container(
                          margin: EdgeInsets.only(top: hp(1.5)),
                          child: CustomTextFormField(
                            textInputType: TextInputType.text,
                            border: Borders.outlineBorder,
                            enabledBorder: Borders.outlineEnabledBorder,
                            hintText: "Last Name",
                            focusedBorder: Borders.outlineFocusedBorder,
                            labelStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            hintTextStyle:
                                DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                            textStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            enabled: true,
                          ),
                    ),
                  
                    Container(
                          margin: EdgeInsets.only(top: hp(1.5)),
                          child: CustomTextFormField(
                            textInputType: TextInputType.text,
                            border: Borders.outlineBorder,
                            enabledBorder: Borders.outlineEnabledBorder,
                            hintText: "Phone Number",
                            focusedBorder: Borders.outlineFocusedBorder,
                            labelStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            hintTextStyle:
                                DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                            textStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            enabled: true,
                          ),
                    ),
                    Container(
                          margin: EdgeInsets.only(top: hp(1.5)),
                          child: CustomTextFormField(
                            textInputType: TextInputType.text,
                            border: Borders.outlineBorder,
                            enabledBorder: Borders.outlineEnabledBorder,
                            hintText: "Email",
                            focusedBorder: Borders.outlineFocusedBorder,
                            labelStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            hintTextStyle:
                                DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                            textStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            enabled: true,
                          ),
                    ),
                    
                    Container(
                          margin: EdgeInsets.only(top: hp(1.5)),
                          child: CustomTextFormField(
                            textInputType: TextInputType.text,
                            border: Borders.outlineBorder,
                            enabledBorder: Borders.outlineEnabledBorder,
                            hintText: "Password",
                            focusedBorder: Borders.outlineFocusedBorder,
                            labelStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            hintTextStyle:
                                DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                            textStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                            enabled: true,
                          ),
                    ),
                           
                    Container(
                      margin: EdgeInsets.only(top: hp(1.5)),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height:50,
                                width: wp(40),
                       child:CustomButton(
                               color: AppColor.duty_doctorYellow,
                               title: "Next",
                               onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadImagePage()));
                               },
                               textStyle: DutyDoctorStyles.dutyDoctorButtonTextStyle()
                       )
                   ),
                            ],
                          )
                    )
                  ],
                ),
              ),
              Container(
                width: wp(100),
                height: hp(18),
              //  color:Colors.green,
                child: Stack(
                  children: <Widget>[
                     Positioned(
                            bottom: hp(-1),
                            left: wp(48),
                            child: Container(
                              child:Row(
                                children: <Widget>[
                                  Container(
                                    child: IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
                                  ),
                                  Container(
                                    child: Text("Cancel Account Set Up",
                                    style: DutyDoctorStyles.dutyDoctorButtonTextStyle(
                                      fontSize: 13,
                                      color: AppColor.primaryText,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                  )
                                ],
                              ))),
                              
                  ],
                ),
              )
            ],
          ),
                      
                     

Positioned.fill(
 bottom: hp(-15),
 right: wp(50),
 
top: hp(1.5),
                        child: Container(
                        child: Image.asset(
                          ImagePath.stetoscopeDown,
                          alignment: Alignment.bottomLeft
                          ),
                    )
                    ),

            ],
          
          )
        ),
      ),
    );
  }
  Widget _genderDropDown() {
    return Container(
    
        margin: EdgeInsets.only(left: 0),
        decoration: BoxDecoration(
           border: Border.all(
              color:AppColor.duty_doctorLightGreen,
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
        height: 55,
        // width: 70,
        child: DropDownField(
          hintText: 'Gender',
          value: gender,
          onChanged: (value) {
            setState(() {
              gender = value;
              print(gender);
            });
          },
          dataSource: [
            {"number": "Male", 'name': "male"},
            {"number": "Female", 'name': "female"},
          ],
          valueField: 'name',
          textField: 'number',
        ));
  }
 }
