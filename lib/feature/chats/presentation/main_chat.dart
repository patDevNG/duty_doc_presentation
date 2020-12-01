import 'package:duty_doctor/feature/chats/presentation/video.dart';
import 'package:duty_doctor/feature/chats/presentation/voice_call.dart';
import 'package:duty_doctor/feature/chats/presentation/voice_call.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class MainChat extends StatefulWidget {
  MainChat({Key key}) : super(key: key);

  @override
  _MainChatState createState() => _MainChatState();
}

class _MainChatState extends State<MainChat> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp;
    final hp = Screen(context).hp;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.duty_doctorGreen,
        centerTitle: true,
        title: Text("Dr. Okuns Patrick"),
        actions: [
          IconButton(icon: Icon(Icons.phone), onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>VoiceCall()));
          }),
          IconButton(icon: Icon(Icons.videocam), onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoCall()));
          })
        ],
      ),
       body: ListView(
         children: [
           Container(
             margin: EdgeInsets.only(top:20),
             child: Center(child: Text("YESTERDAY, 2:30PM")),
           ),
           IncomingChatCard(),
           SizedBox(height: hp(2),),
           OutGoingChatCard(),
           Container(
             margin: EdgeInsets.only(top:20),
             child: Center(child: Text("YESTERDAY, 7:30PM")),
           ),
            IncomingChatCard(),
           SizedBox(height: hp(2),),
           OutGoingChatCard(),
         ],
       ),
    );
  }
}

class OutGoingChatCard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Container(
      width: wp(100),
      height: hp(20),
      child: Stack(
       children: [
          Positioned(
            left: wp(7),
                             child: Container(
              margin: EdgeInsets.only(left:wp(6),top:hp(3), bottom: hp(2)), 
            
            width: wp(75),
            decoration: BoxDecoration(
              color: AppColor.duty_doctorPeach,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
            ),
            child: Container(
       margin: EdgeInsets.only(top:20, left:20,bottom: 20),
       child: Text("The person who says it cannot\nbe done should not interrupt the person\nwho is doing it.",
       style: DutyDoctorStyles.dutyDoctorsStyleWithRoboto(
         color: AppColor.duty_doctorFaintedBlack,
         fontSize: 15,
       ),
       )
       ),
        ),
          ),
           Positioned(
     right: wp(8),
     top: hp(1),
                      child: Container(
height: 30,
       width: 30,
       decoration: BoxDecoration(
        shape: BoxShape.circle,
        // color: Colors.green,
       ),
       child:ClipOval(child: Image.asset(ImagePath.pat),)
        ),
          ),
       ],
      ),
    );
  }
}

class IncomingChatCard extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final hp =Screen(context).hp;
    final wp = Screen(context).wp;
    return Container(
      width: wp(100),
     //  height: hp(20),
     //  color: Colors.red,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left:wp(6),top:hp(2), bottom: hp(2)),
            width: wp(75),
           //  height:hp(20),
            decoration: BoxDecoration(
              color: AppColor.duty_doctorTorquiseGreen,
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
            ),
            child: Container(
              margin: EdgeInsets.only(top:20, left:20,bottom: 20),
              child: Text("The person who says it cannot\nbe done should not interrupt the person\nwho is doing it.",
              style: DutyDoctorStyles.dutyDoctorsStyleWithRoboto(
                color: AppColor.duty_doctorFaintedBlack,
                fontSize: 15,
              ),
              )
              ),
          ),
          Positioned(
            left: wp(3),
                             child: Container(
height: 30,
       width: 30,
       decoration: BoxDecoration(
        shape: BoxShape.circle,
        // color: Colors.green,
       ),
       child:ClipOval(child: Image.asset(ImagePath.pat),)
               ),
          ),
          
        ],
      ),
    );
  }
}