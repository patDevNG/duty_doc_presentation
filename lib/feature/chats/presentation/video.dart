import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class VideoCall extends StatefulWidget {
  VideoCall({Key key}) : super(key: key);

  @override
  _VideoCallState createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp;
    final hp = Screen(context).hp;
    return Scaffold(
       body:Stack(
         children: [
           Container(
             height: hp(100),
             width: wp(100),
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage(ImagePath.doc),
                 fit: BoxFit.cover
               )
             ),
           ),
            Positioned(
                   top: hp(80),
                   child: Center(
                     child: Container(
                     height: hp(10),
                     width: wp(100),
                     child: Container(
                       margin: EdgeInsets.only(left:wp(5),right: wp(5)),
                       child: Row(
                         children: [
                           Container(
                             width: wp(15),
                             
                             child: ClipOval(
                               child: Container(
                                 width: wp(10),
                                 height: hp(6),
                                 decoration: BoxDecoration(
                                   color:AppColor.duty_doctorLightGreen,
                                   shape: BoxShape.circle
                                   
                                 ),
                                 child:IconButton(icon: Icon(Icons.more_horiz_rounded, color: AppColor.duty_doctorWhite,),onPressed: (){},) ,
                               ),
                             ),
                           ),
                           Material(
                             elevation: 4,
                             borderRadius:  BorderRadius.circular(50),
                              child: Container(
                                height: hp(8),
                                decoration: BoxDecoration(
                                  borderRadius:  BorderRadius.circular(50),
                                  
                                ),
                               width: wp(45),
                               
                               child: Row(
                                 children: [
                                   SizedBox(width:6),
                                   Container(
                                     margin: EdgeInsets.only(left:4),
                                      width: wp(10),
                                 height: hp(6),
                                 child: Container(
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle,color: AppColor.duty_doctor_light_grey,

                                   ),
                                   child:IconButton(icon: Icon(Icons.mic_off, color: AppColor.duty_doctorBlack,), onPressed: null)
                                 ),
                                   ),
                                   SizedBox(width:10),
                                    Container(
                                     margin: EdgeInsets.only(left:4),
                                      width: wp(10),
                                 height: hp(6),
                                 child: Container(
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle,color: AppColor.duty_doctor_Red,

                                   ),
                                   child:IconButton(icon: Icon(Icons.call, color: AppColor.duty_doctorWhite,), onPressed: null)
                                 ),
                                   ),
                                    SizedBox(width:10),
                                           Container(
                                     margin: EdgeInsets.only(left:4),
                                      width: wp(10),
                                 height: hp(8),
                                 child: Container(
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle,color: AppColor.duty_doctorLightGreen,

                                   ),
                                   child:IconButton(icon: Icon(Icons.volume_down_rounded,color: AppColor.duty_doctorWhite,), onPressed: null)
                                 ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           SizedBox(width:wp(3)),
                           Container(
                           height: 50,
                           width: 50,
                           decoration: BoxDecoration(
                           shape: BoxShape.circle,
               // color: Colors.green,
       ),
                          child: ClipOval(child: Image.asset(ImagePath.pat))
                         ),
                         ],
                       ),
                     ),
                 ),
                   ))   
         ],
       ),
    );
  }
}