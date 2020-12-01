import 'dart:async';

import 'package:duty_doctor/duty_logo.dart';
import 'package:duty_doctor/feature/create_account/presentation/create_account.dart';
import 'package:duty_doctor/get_started.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
  //  Timer(
  //     Duration(seconds:3),()=> Router.pushPage(context, GetStartedPage()));
    return Scaffold(
       body: Container(
         decoration: BoxDecoration(
           color: AppColor.duty_doctorYellow
         ),
       ),
    );
  }
}