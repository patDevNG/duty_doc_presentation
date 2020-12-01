
import 'package:duty_doctor/feature/login/presentation/login.dart';
import 'package:duty_doctor/feature/tell_more/presentation/tell_more.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_button.dart';
import 'package:duty_doctor/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_screen/responsive_screen.dart';

class CreateAccountPage extends StatefulWidget {
  CreateAccountPage({Key key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
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
                                child: Text(StringConstants.welcome,
                                style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(),
                                ),
                              ),
                              //  Container(
                              //   child: Text(StringConstants.createAccount,
                              //   style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(),
                              //   ),
                              // )
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
                       margin: EdgeInsets.symmetric(horizontal: wp(10), vertical: hp(0)),
                       child:CustomButton(
                           color: AppColor.duty_doctorGreen,
                           title: "Create Account",
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>TellMorePage()));
                           },
                           textStyle: DutyDoctorStyles.dutyDoctorButtonTextStyle()
                       )
                      
                      
                     ),
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: wp(10), vertical: hp(2)),
                       child:CustomButton(
                           color: AppColor.duty_doctorYellow,
                           title: "Log in",
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                           },
                           textStyle: DutyDoctorStyles.dutyDoctorButtonTextStyle()
                       )
                     ),
                    //  Container(
                    //    margin: EdgeInsets.symmetric(horizontal: wp(10), vertical:hp(0.03)),
                    //    child: Row(
                    //        mainAxisAlignment: MainAxisAlignment.end,
                    //        children: <Widget>[
                        
                    //        Container(
                    //          child: Row(
                    //            children: <Widget>[
                    //              Container(
                    //                child:Text(
                    //                  "Got an account? Login",
                    //                  style: DutyDoctorStyles.dutyDoctorButtonTextStyle(
                    //                    color: AppColor.duty_doctorBlack,
                    //                    fontSize: 13
                    //                  ),
                    //                )
                    //              ),
                    //             IconButton(icon: Icon(Icons.arrow_forward, color:Colors.black), onPressed: null)
                    //            ],
                    //          ),
                    //        )
                    //    ],
                    //    ),
                    //  )
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