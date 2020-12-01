import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_screen/responsive_screen.dart';

class VoiceCall extends StatefulWidget {
  VoiceCall({Key key}) : super(key: key);

  @override
  _VoiceCallState createState() => _VoiceCallState();
}

class _VoiceCallState extends State<VoiceCall> {
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
       body: Container(
         width:wp(100) ,
         height: hp(100),
         child:Stack(children: [
           Positioned.fill(
                       top: hp(-13),
                       left: wp(Sizes.HEIGHT_40),
                       child: SvgPicture.asset(ImagePath.registrationBg, alignment: Alignment.topRight,)),

                Positioned(
                  top: hp(20),
                  left: wp(25),
                     child: Container(
                    height: hp(10),
                    width: wp(100),
                    // color: Colors.red,
                    child: Row(
                      children: [
                        Container(
                          // color:Colors.yellow,
                          height: 50,
                          width: 50,
                          child: SvgPicture.asset(ImagePath.logo, fit: BoxFit.contain,),
                        ),
                        SizedBox(width:wp(1)),
                        Container(
                          margin: EdgeInsets.only(left:wp(1)),
                          child: Text('Duty Doctor',
                          style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                            color: AppColor.duty_doctorBlack,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: hp(35),
                                    child: Container(
                                margin:EdgeInsets.only(left:wp(10),right:wp(10)),
                     width: wp(75),
                     height: hp(16),
                    //  color:Colors.red,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           height: 100,
                           width: 100,
                           decoration: BoxDecoration(
                           shape: BoxShape.circle,
               // color: Colors.green,
       ),
                          child: ClipOval(child: Image.asset(ImagePath.doc,fit: BoxFit.cover,))
                         ),
                          Container(
                           height: 100,
                           width: 100,
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

                 Positioned(
                   top: hp(50),
                   
                   child: Container(
                     height: hp(15),
                     width: wp(100),
                     child: Container(
                       margin: EdgeInsets.only(left:wp(20),right:wp(20), top:hp(3)),
                       child:Image.asset(ImagePath.voices)
                     ),
                 )), 

                 Positioned(
                   top: hp(65),
                   child: Container(
                     height: hp(15),
                     width: wp(100),
                     child: Container(
                       margin:EdgeInsets.only(top:hp(2)),
                       child: Column(children: [
                         Container(child:Text('Dr. Wale Njoku',
                         style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                           fontSize: 20
                         ),
                          ) ,),
                         Container(
                           margin:EdgeInsets.only(top:hp(1)),
                           child:Text('MBBS, FCPS - General Practioner',
                           style: DutyDoctorStyles.dutyDoctorGreenheaderStyle1(
                             color: AppColor.duty_doctorBlack,
                             fontSize: 11
                           ),
                           ) ,)
                       ],),
                     ),
                 )) ,

                 Positioned(
                   top: hp(80),
                   child: Center(
                     child: Container(
                     height: hp(10),
                     width: wp(100),
                     child: Container(
                       margin: EdgeInsets.only(left:wp(15),right: wp(15)),
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
                           )
                         ],
                       ),
                     ),
                 ),
                   ))   
         ],
         )
       ),
    );
  }
}