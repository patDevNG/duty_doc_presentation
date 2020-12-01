import 'package:duty_doctor/feature/login/presentation/login.dart';
import 'package:duty_doctor/feature/reset_password/presentation/reset_password.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_screen/responsive_screen.dart';

import 'feature/create_account/presentation/create_account.dart';

class GetStartedPage extends StatefulWidget {
  GetStartedPage({Key key}) : super(key: key);

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
       body: Container(
         height: hp(100),
         width: wp(100),
         child: Stack(
           children: [
            Positioned.fill(
              bottom: hp(-20),
                            child: Container(
                 child:SvgPicture.asset(ImagePath.intro_bg, alignment: Alignment.bottomLeft,)
               ),
             ),
             Container(
               margin: EdgeInsets.symmetric(horizontal: wp(10)),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     margin: EdgeInsets.only(top:hp(10)),
                     height: 44,
                     width: 44,
                     child: SvgPicture.asset(ImagePath.logo),
                   ),
                   Container(
                     margin: EdgeInsets.only(top:hp(5)),
                       child: Text("Over 2000+ Medical\n Professionals",
                       style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                         fontSize: 25,
                       ),
                       ),
                   ),
                   Container(
                     margin: EdgeInsets.only(top:hp(3)),
                     child:Text("Get quick access to doctors, hospitals,\n pharmaceuticals, HMO plans and more.",
                     style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                       color: AppColor.duty_doctorBlack
                     ),
                     )
                   ),
                   Container(
                      margin: EdgeInsets.only(top:hp(3)),
                      width: 128,
                      height: 50,
                     child:CustomButton(
                             color: AppColor.duty_doctorYellow,
                             title: "Next",
                            
                             onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountPage()));
                             },
                             textStyle: DutyDoctorStyles.dutyDoctorButtonTextStyle()
                       )
                   )
                 ],
               ),
             )
           ],
         ),
       ),
    );
  }
}