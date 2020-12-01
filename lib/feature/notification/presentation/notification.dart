import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
  
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.duty_doctorGreen,
        title:Container(
          margin: EdgeInsets.only(left:22),
          child: Text("Notifications")),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.close, color:AppColor.duty_doctorWhite), onPressed: (){
            Navigator.pop(context);
          })
        ],
        elevation: 0,
      ),
       body: SingleChildScrollView(
         child: Container(
           
           height: hp(100),
           width: wp(100),
           child: ListView(
             children: [
               Align(
                 
                 child: Container(
                   margin: EdgeInsets.only(top:hp(4)),
                   alignment: Alignment.topLeft,
                   child: appointmentCard("heading", "body", "time", "day", context))),
                   Container(
                   margin: EdgeInsets.only(top:hp(2)),
                   alignment: Alignment.topLeft,
                   child: appointmentCard("heading", "body", "time", "day", context)),
                     Container(
                   margin: EdgeInsets.only(top:hp(2)),
                   alignment: Alignment.topLeft,
                   child: appointmentCard("heading", "body", "time", "day", context)),
                    Container(
                   margin: EdgeInsets.only(top:hp(2)),
                   alignment: Alignment.topLeft,
                   child: appointmentCard("heading", "body", "time", "day", context)), Container(
                   margin: EdgeInsets.only(top:hp(2)),
                   alignment: Alignment.topLeft,
                   child: appointmentCard("heading", "body", "time", "day", context)),
                    Container(
                   margin: EdgeInsets.only(top:hp(2)),
                   alignment: Alignment.topLeft,
                   child: appointmentCard("heading", "body", "time", "day", context))
             ],
           ),
         ),
       ),
    );
  }

  Widget appointmentCard(String heading, String body, String time, String day, BuildContext context){
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return(
      Container(
        height: hp(16),
        width: wp(100),
        margin: EdgeInsets.only(left:wp(3), right:wp(3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text('Today'),
            ),
            Container(
              margin: EdgeInsets.only(top:15 ),
              child: Row(children: [
                Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: AppColor.duty_doctorLightGreen
              ),
              child:Icon(Icons.notifications, color: AppColor.duty_doctorWhite,)
            ),
            Container(
              width: wp(50),
              margin: EdgeInsets.only(left:15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Appointment Reminder",
                    overflow: TextOverflow.ellipsis,
                    style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(
                      fontSize: 16,
                      color: AppColor.duty_doctorBlack,
                      fontWeight: FontWeight.w700 
                    ),
                    ),
                  ),
                   Container(
                     margin: EdgeInsets.only(top:3),
                    child: Text("You are welcome. by the way..."),
                  )
                ],
              ),
            ),
            SizedBox(width:wp(18)),
             Container(
                    child: Text("3.25PM",
                    style: DutyDoctorStyles.dutyDoctorsStyle(),
                    ),
                  )
              ],),
            ),
            Container(
              margin: EdgeInsets.only(top:10),
              width: wp(100),
              height: 1,
              color: Colors.grey.withOpacity(0.2),
            )
          ],
        ),
      )
    );
  }
}
