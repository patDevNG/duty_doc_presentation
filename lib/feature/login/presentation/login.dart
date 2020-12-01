import 'package:duty_doctor/feature/dashboard/presentation/dashboard.dart';
import 'package:duty_doctor/feature/dboard/pesentation/dashboard.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_button.dart';
import 'package:duty_doctor/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_screen/responsive_screen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
       body: SingleChildScrollView(
         child: Container(
           height: hp(100),
           width: wp(100),
           child: Stack(
             children: [
               Positioned.fill(
                 top: hp(-10),
                       left: wp(22),
                 child: Container(
                    child: Image.asset(ImagePath.loginBg, alignment: Alignment.topRight,)),
               ),

               Positioned.fill(
                 bottom: hp(-10),
                           right: wp(40),
                 child: Container(
                   child:SvgPicture.asset(ImagePath.loginLeaf,alignment: Alignment.bottomLeft, )
                 ),
               ),
               Container(
                 margin: EdgeInsets.only(left:wp(10),right: wp(10), top: hp(20)),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       child: Text(StringConstants.hello,
                       style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(),
                       ),
                     ),

                     Container(
                       child: Text("Sign in to your account",
                       style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(),
                       ),
                     ),

                     Container(
                       margin: EdgeInsets.only(top:hp(4)),
                       child: CustomTextFormField(
                                  textInputType: TextInputType.text,
                                    prefixIcon: Icon(Icons.phone, color: AppColor.hintText,),
                                    hasPrefixIcon: true,
                                    border: Borders.outlineBorder,
                                    enabledBorder: Borders.outlineEnabledBorder,
                                    hintText: "Enter your Phone Number",
                                    focusedBorder: Borders.outlineFocusedBorder,
                                    labelStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                                    hintTextStyle: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                                    textStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                                    enabled: true,
                               ),
                     ),
                     Container(
                               margin: EdgeInsets.only(top:hp(2)),
                               child:PinCodeFields(
                                 length: 4,
                                 obscureCharacter: '*',
                                 obscureText: true,
                                 fieldBorderStyle: FieldBorderStyle.Square,
                                 fieldHeight: 70,
                                 fieldWidth: 70,
                                 keyboardType: TextInputType.number,
                                 borderRadius: BorderRadius.circular(5),
                                 borderColor: AppColor.duty_doctorLightGreen,
                                 onComplete: (output){
                                   print(output);
                                 },
                               ),
                             ),

                             Container(
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 
                                 children: [
                                   Container(
                                     child: Text("Forgot PIN?"),
                                   ),

                                  Container(
                               margin: EdgeInsets.only(top:hp(3)),
                               width: 101,
                               child: CustomButton(
                             color: AppColor.duty_doctorYellow,
                             title: "login",
                             onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                             },
                             textStyle: DutyDoctorStyles.dutyDoctorButtonTextStyle()
                       )
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