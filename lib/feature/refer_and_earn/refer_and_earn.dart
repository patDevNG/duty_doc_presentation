import 'package:duty_doctor/feature/notification/presentation/notification.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class ReferEarn extends StatefulWidget {
  ReferEarn({Key key}) : super(key: key);

  @override
  _ReferEarnState createState() => _ReferEarnState();
}

class _ReferEarnState extends State<ReferEarn> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp;
    final hp = Screen(context).hp;
    return Scaffold(
      backgroundColor: AppColor.duty_doctorOffWhite1.withOpacity(0.97),
       body: SingleChildScrollView(
         child: Container(
           height: hp(100),
           width:wp(100),
           child: Column(
             children: [
               Container(
                 width: wp(100),
                 height: hp(40),
                 decoration: BoxDecoration(
                   color:AppColor.duty_doctorGreen,
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                 ),
                 child: Column(
                   children: [
                     Container(
                       margin: EdgeInsets.only(top:hp(5)),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           IconButton(icon: Icon(Icons.arrow_back, color: AppColor.duty_doctorWhite,), onPressed: (){
                             Navigator.pop(context);
                           }),
                           Container(
                             child: Text('Refer & Earn',
                             style:DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(
                               color:AppColor.duty_doctorWhite,
                               fontSize: 20
                             )
                             ),
                           ),
                           IconButton(icon: Icon(Icons.notifications,color: AppColor.duty_doctorWhite,), onPressed:() {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
                           })
                         ],
                       ),

                     ),
                     Container(
                       margin: EdgeInsets.only(top:20),
                       height: 150,
                       child: Row(children: [
                         Container(
                           width: wp(49),
                           height: 200,
                           child: Center(
                             child: Container(
                               height: 70,
                               width: 100,
                          
                               child: Center(
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     
                                       Container(
                                         
                                       
                                         child: Center(child: Text(' N 0.00',
                                         style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 22,
                                           color: AppColor.duty_doctorWhite
                                         ),
                                         )),
                                       ),
                                       Container(
                                        margin: EdgeInsets.only(top:15),
                                        
                                         child: Center(child: Text('Rewards     ',
                                         style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 11,
                                           color: AppColor.duty_doctorWhite
                                         ),
                                         ),
                                         
                                         ),
                                       ),
                                     
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ),
                         Container(
                           width: 2,
                           height: 200,
                           color: AppColor.duty_doctorWhite,
                         ),
                           Container(
                           width: wp(49),
                           
                           height: 200,
                           child: Center(
                             child: Container(
                               height: 70,
                               width: 100,
                          
                               child: Center(
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     
                                       Container(
                                         
                                       
                                         child: Center(child: Text(' N 250.00',
                                         style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 22,
                                           color: AppColor.duty_doctorWhite
                                         ),
                                         )),
                                       ),
                                       Container(
                                        margin: EdgeInsets.only(top:15),
                                        
                                         child: Center(child: Text('Amount per Referral',
                                         style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 11,
                                           color: AppColor.duty_doctorWhite
                                         ),
                                         ),
                                         
                                         ),
                                       ),
                                     
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ],)
                     )
                   ],
                 ),
               ),
               Transform.translate(offset: Offset(0,-50),
                  child: Container(
                    width: wp(90),
                    height: hp(10),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top:hp(3)),
                        child: Column(
                        children: [
                          Container(
                            child: Text('Earn cash rewards when your friends signup and',
                            style: DutyDoctorStyles.dutyDoctorsStyle(),
                            ),
                          ),
                           Container(
                             margin: EdgeInsets.only(top:hp(0.5)),
                            child: Text('save your referral link or code',
                            style: DutyDoctorStyles.dutyDoctorsStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
               ),
               Container(
                 width: wp(90),
                 height: hp(18),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(4)
                 ),
                 child: Container(
                   margin: EdgeInsets.only(left:30,right:30, top:20),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:[
                       Container(
                         
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:[
                             Container(
                               child: Text('REFERAL CODE'),
                             ),
                             Container(
                               child: Row(
                                 children: [
                                   Container(
                                     child:IconButton(icon: Icon(Icons.share, color:AppColor.duty_doctorGreen), onPressed: null)
                                     ),
                                      Container(
                                     child:Text('Share',
                                     style: DutyDoctorStyles.dutyDoctorsStyle(),
                                     )
                                     )
                                 ],
                               ),
                             )
                           ]
                         ),
                       ),
                       Container(
                         child: Text('EST2XN',
                         style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                           fontSize: 35,fontWeight: FontWeight.bold
                         ),
                         ),
                       )
                     ]
                   ),
                 ),
               ),

               Container(
                 margin: EdgeInsets.only(top:hp(2.5)),
                 child: Text('Performance (Referal Stats)                  ',
                 style:DutyDoctorStyles.dutyDoctorGreenheaderStyle1(
                   fontSize: 20,
                   fontWeight: FontWeight.w600
                 )
                   ),
               ),
               Container(
                 margin: EdgeInsets.only(top:hp(2.5),left:hp(2.5)),
                 child: Row(
                   children:[
                     Container(
                       width: wp(32),
                       height: hp(20),
                      decoration: BoxDecoration(
                        color:AppColor.duty_doctorWhite,
                        borderRadius: BorderRadius.circular(5),
                        
                      ),
                      child: Container(
                        
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                
                                margin: EdgeInsets.only(top:hp(6), left:wp(4)),
                                child:Text('N 0.00',
                                 style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 22,
                                           color: AppColor.duty_doctorGreen
                                         ),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top:hp(1.5), left:wp(4)),
                                child:Text('Total Rewards',
                                 style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 11,
                                           color: AppColor.duty_doctorBlack
                                         ),
                                )
                              ),
                               Container(
                                margin: EdgeInsets.only(top:hp(1), left:wp(4)),
                                child:Text('Earned',
                                 style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 11,
                                           color: AppColor.duty_doctorBlack
                                         ),
                                )
                              )
                            ],
                          
                        ),
                      ),
                     ),
                     SizedBox(width:wp(3)),
                     Container(
                       width: wp(25),
                       height: hp(20),
                       decoration: BoxDecoration(
                         color:AppColor.duty_doctorWhite,
                       ),
                       child: Container(
                        
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                
                                margin: EdgeInsets.only(top:hp(6), left:wp(4)),
                                child:Text('0',
                                 style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 22,
                                           color: AppColor.duty_doctorGreen
                                         ),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top:hp(1.5), left:wp(4)),
                                child:Text('Total',
                                 style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 11,
                                           color: AppColor.duty_doctorBlack
                                         ),
                                )
                              ),
                               Container(
                                margin: EdgeInsets.only(top:hp(1), left:wp(4)),
                                child:Text('Signups',
                                 style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 11,
                                           color: AppColor.duty_doctorBlack
                                         ),
                                )
                              )
                            ],
                          
                        ),
                      ),
                     ),
                     SizedBox(width:wp(3)),
                      Container(
                       width: wp(25),
                       height: hp(20),
                       decoration: BoxDecoration(
                         color:AppColor.duty_doctorWhite
                       ),
                       child: Container(
                        
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                
                                margin: EdgeInsets.only(top:hp(6), left:wp(4)),
                                child:Text('0',
                                 style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 22,
                                           color: AppColor.duty_doctorGreen
                                         ),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top:hp(1.5), left:wp(4)),
                                child:Text('Total Saved',
                                 style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 11,
                                           color: AppColor.duty_doctorBlack
                                         ),
                                )
                              ),
                               Container(
                                margin: EdgeInsets.only(top:hp(1), left:wp(4)),
                                child:Text('Signups',
                                 style: DutyDoctorStyles.dutyDoctorsStyle(
                                           fontSize: 11,
                                           color: AppColor.duty_doctorBlack
                                         ),
                                )
                              )
                            ],
                          
                        ),
                      ),
                     ),
                   ]
                 ),
               )
             ],
           ),
         ),
       ),
    );
  }
}