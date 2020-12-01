import 'package:duty_doctor/duty_logo.dart';
import 'package:duty_doctor/feature/about/presentation/about.dart';
import 'package:duty_doctor/feature/cart/presentation/cart_page.dart';
import 'package:duty_doctor/feature/chats/presentation/chats.dart';
import 'package:duty_doctor/feature/create_account/presentation/create_account.dart';
import 'package:duty_doctor/feature/dashboard/presentation/dashboard.dart';
import 'package:duty_doctor/feature/dboard/pesentation/dashboard.dart';
import 'package:duty_doctor/feature/doctor_profile/presentation/doctors_profile.dart';
import 'package:duty_doctor/feature/doctors_search_result/presentation/doctor_search_result.dart';
import 'package:duty_doctor/feature/general_consultion/general_consultation.dart';
import 'package:duty_doctor/feature/navigation_drawer/drawer.dart';
import 'package:duty_doctor/feature/refer_and_earn/refer_and_earn.dart';
import 'package:duty_doctor/feature/reset_password/presentation/reset_password.dart';
import 'package:duty_doctor/feature/search/presentation/main_search.dart';
import 'package:duty_doctor/feature/tell_more/presentation/tell_more.dart';
import 'package:duty_doctor/get_started.dart';
import 'package:duty_doctor/landing.dart';
import 'package:duty_doctor/theme/theme.dart';
import 'package:duty_doctor/feature/notification/presentation/notification.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConstants.appName,
      home:GetStartedPage(),
    );
  }
}

 ThemeData themeData(ThemeData theme) {
    return theme.copyWith(
      textTheme: GoogleFonts.sourceSansProTextTheme(
        theme.textTheme,
      ),
    );
  }

