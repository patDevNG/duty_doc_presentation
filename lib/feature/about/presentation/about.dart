import 'package:duty_doctor/feature/notification/presentation/notification.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp;
    final hp = Screen(context).hp;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.duty_doctorGreen,
        leading: IconButton(icon: Icon(Icons.arrow_back,color:AppColor.duty_doctorWhite), onPressed: (){
          Navigator.pop(context);
        }),
        title: Text("About"),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.notifications,color:AppColor.duty_doctorWhite), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: hp(100),
          width: wp(100),
          child: Container(
            margin: EdgeInsets.only(left:wp(6), right:wp(6), top: hp(5)),
            // color: Colors.red,
            child: Column(
              children: [
                Container(
                  child: Text('Duty Doctor is making it easy for everyone to easily\nconnect with medical experts and facilities with ease\nacross the globe … '),
                ),
                Container(
                   margin: EdgeInsets.only(left:wp(1.9), right:wp(1)),
                  child:Row(children: [
                    Container(
                      child:Text('More'),
                    ),
                    Container(
                      child:IconButton(icon: Icon(Icons.arrow_forward_ios, color:AppColor.duty_doctorGreen, size:15), onPressed: null),
                    )
                  ],)
                ),
                Container(
                  child: aboutMenuCard(context,"FAQs"),
                ),
                Container(
                  child: aboutMenuCard(context,"Our Blog"),
                ),
                Container(
                  child: aboutMenuCard(context,"Contact Us"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget aboutMenuCard(BuildContext context, String title){
    final wp = Screen(context).wp;
    final hp = Screen(context).hp;

    return  Container(
      width: wp(100),
      height: hp(14),
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            margin: EdgeInsets.only(top:hp(1)),
            child:Text(title, 
            style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(
              fontSize: 18
            ),
            )
          ),
          Container(
            margin: EdgeInsets.only(top:hp(7)),
            width:wp(100),
            height: 1,
            color: AppColor.duty_doctorGrey.withOpacity(0.2),
          )
        ]
      ),
    );
  }
}