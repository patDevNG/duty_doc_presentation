import 'dart:async';

import 'package:duty_doctor/get_started.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_screen/responsive_screen.dart';

class LogoDisplayPage extends StatefulWidget {
  LogoDisplayPage({Key key}) : super(key: key);

  @override
  _LogoDisplayPageState createState() => _LogoDisplayPageState();
}

class _LogoDisplayPageState extends State<LogoDisplayPage> {
  @override
  Widget build(BuildContext context) {
    //  Timer(
    //   Duration(seconds:3),()=> Router.pushPage(context, GetStartedPage()));
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
       body: Container(
         height: hp(100),
         width:wp(100),
         child: Stack(
           children: [
             Padding(
               padding:EdgeInsets.only(top:hp(0)),
                            child: Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Container(

                       child: SvgPicture.asset(ImagePath.logo, alignment: Alignment.center,),

                     ),
                     Container(
                     child:Text("Duty Doctor",
                     style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(
                       fontSize: 40,
                       fontWeight: FontWeight.bold
                     ),
                     )
                   ),
                   ],
                 ),
               ),
             ),
            //  Positioned(
            //    top: hp(65),
            //    left: wp(30),
            //    child: Center(
            //      child: 
            //    ),
            //  )
           ],
         ),
       ),
    );
  }
}