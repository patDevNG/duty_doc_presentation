import 'package:duty_doctor/feature/create_account/presentation/create_account.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_button.dart';
import 'package:duty_doctor/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_screen/responsive_screen.dart';

class ResetPasswordPage extends StatefulWidget {
  ResetPasswordPage({Key key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
       body: SingleChildScrollView(
                child: Container(
           width: wp(100),
           height: hp(100),
           child: Column(
             children: <Widget>[
               Container(
              width: wp(Sizes.HEIGHT_100),
              height: hp(100),
              // color: Colors.green,
              child: Stack(
                children: <Widget>[
                      Positioned(
                 top:hp(-10), 
                 left: wp(6),
                 child: Container(
                   padding: EdgeInsets.only(left:wp(30)),
                   child: Image.asset(ImagePath.stetoscope),
                 ),
                      ),
                      Positioned(
                        top: hp(27),
                        child: Container(
                          margin: EdgeInsets.only(left:wp(Sizes.HEIGHT_10)),
                          width: wp(70),
                          height: hp(35),
                          // color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top:hp(3)),
                                child: Text(StringConstants.hello,
                                style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(),
                                ),
                              ),
                               Container(
                                child: Text(StringConstants.changePassword,
                                style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(),
                                ),
                              )
                            ],
                          ),
                        )),
                         Positioned(
                          top:hp(48),                          child: Container(
                 height: hp(35),
                 width: wp(100),
      
                 child: Column(
                   children: <Widget>[
                     Container(

                      
                       margin: EdgeInsets.symmetric(horizontal: wp(10), vertical: hp(1)),
                       child: Row(
                           children: <Widget>[
                             Expanded(
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
                                    hasSufixIcon: false,
                               ),
                             ),
                           ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: wp(10), vertical: hp(2)),
                       child:CustomButton(
                           color: AppColor.duty_doctorYellow,
                           title: "Get Started",
                           onPressed: (){
                            // Router.pushPage(context, CreateAccountPage());
                           },
                           textStyle: DutyDoctorStyles.dutyDoctorButtonTextStyle()
                       )
                     ),
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: wp(10), vertical:hp(0.03)),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                        
                           Container(
                             child: Row(
                               children: <Widget>[
                                 Container(
                                   child:Text(
                                     "Got an account? Login",
                                     style: DutyDoctorStyles.dutyDoctorButtonTextStyle(
                                       color: AppColor.duty_doctorBlack,
                                       fontSize: 13
                                     ),
                                   )
                                 ),
                                IconButton(icon: Icon(Icons.arrow_forward, color:Colors.black), onPressed: null)
                               ],
                             ),
                           )
                       ],),
                     )
                   ],
                 ),
               ),
                         ),

                         Positioned(
                           bottom: hp(-17),
                           right: wp(50),
                          child: Container(
                            child:SvgPicture.asset(ImagePath.loginLeaf)
                          ),
                         )
                ],
              ),
               ),
              
             ],
           ),
         ),
       )
    );
  }
}