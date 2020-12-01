import 'dart:developer';

import 'package:duty_doctor/feature/chats/presentation/chats.dart';
import 'package:duty_doctor/feature/general_consultion/general_consultation.dart';
import 'package:duty_doctor/feature/navigation_drawer/drawer.dart';
import 'package:duty_doctor/feature/notification/presentation/notification.dart';
import 'package:duty_doctor/feature/personalized_service/personalized_service.dart';
import 'package:duty_doctor/feature/search/presentation/main_search.dart';
import 'package:duty_doctor/feature/service_providers/presentation/service_providers.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_textfield.dart';
import 'package:duty_doctor/widget/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_screen/responsive_screen.dart';


class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
   final GlobalKey _scaffoldKey = new GlobalKey();
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavigationDrawer(),
       body:SingleChildScrollView(
          
           child: Container(
             width: wp(100),
             height: hp(100),
             child: ListView(
               children: [
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                     
                   ),
                   height: hp(52),
                   child: Stack(
                      children: [
                       Positioned.fill(child: SvgPicture.asset(ImagePath.dashboard, fit: BoxFit.cover,)),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: wp(6)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                          
                              margin: EdgeInsets.only(top:hp(4)),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                
                                Container(
                                  
                                  child: IconButton(icon: Icon(Icons.menu, color: AppColor.duty_doctorWhite,size: 40,),onPressed: (){
                                     Scaffold.of(context).openEndDrawer();
                                  },),
                                ),
                                Container(
                                  child: IconButton(icon: Icon(Icons.notifications, color: AppColor.duty_doctorWhite,),onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
                                  },),
                                )
                              ],)
                            ),

                            Container(
                              margin: EdgeInsets.only(left:10, top: 55),
                             child: Text(
                               'Find Your Desired\nConsultation',
                               style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(
                                 color:AppColor.duty_doctorWhite,
                                 fontSize: 25
                               ),
                             ), 
                            ),
                            Container(
                              margin: EdgeInsets.only(top:18),
                              decoration: BoxDecoration(
                                color: AppColor.duty_doctorWhite,
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child:CustomTextFormField(
                                    textInputType: TextInputType.text,
                                     hasPrefixIcon: false,
                                     hasSufixIcon: true,
                                     suffixIcon: Icon(Icons.search, color: AppColor.duty_doctorBlack,),
                                      border: Borders.outlineBorder,
                                      enabledBorder: Borders.outlineEnabledBorder,
                                      hintText: "Search for Doctors, Speacialists and more ...",
                                      focusedBorder: Borders.outlineFocusedBorder,
                                      labelStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                                      hintTextStyle: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                                      textStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                                      enabled: true,
                                 ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                 
                                  Container(
                                    margin: EdgeInsets.only(top:16),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text('Got an Emmergency? Get Help',
                                          style: DutyDoctorStyles.dutyDoctorSmallTextStyle(
                                            fontSize: 15,
                                            color: AppColor.duty_doctorWhite,
                                          ),
                                          ),
                                        ),
                                        Container(
                                          child: IconButton(icon: Icon(Icons.arrow_forward, color: AppColor.duty_doctorWhite,), onPressed: null),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                     ],
                   )
                 ),
                 Container(
                   margin: EdgeInsets.only(top:hp(3),left: wp(3),right: wp(3)),
                   width: wp(100),
                   height: hp(35),
                   child: Card(
                     child: Stack(
                      children: [
                        Positioned.fill(child:SvgPicture.asset(ImagePath.consult) ),
                        Container(
                          margin: EdgeInsets.only(left:wp(6)),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top:20),
                                child: Text('Consult\na Doctor',
                                style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                                  fontSize: 35
                                ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top:10),
                                child: Text('Get exceptional primary care\nfrom the comfort of your home\nand office instantly',
                                style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                                ),
                                ),
                              ),
                              InkWell(
                                       onTap: (){
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>GeneralConsultation()));
                                       },                       child: Container(
                                  child: Row(children: [
                                    Container(
                                      child:Text('Start Now',
                                      style: DutyDoctorStyles.dutyDoctorButtonTextStyle(
                                        color:AppColor.duty_doctorGreen,
                                        fontSize: 13
                                      ),
                                      )
                                    ),
                                    IconButton(icon: Icon(Icons.arrow_forward_ios, size: 13,color: AppColor.duty_doctorGreen,), onPressed: null)
                                  ],),
                                ),
                              ),

                              
                            ],
                          )
                        )
                      ],
                     ),
                   ),
                 ),
               Container(
                   margin: EdgeInsets.only(top:hp(6),left: wp(3),right: wp(3)),
                   width: wp(100),
                   height: hp(28),
                   child: Card(
                     child: Stack(
                      children: [
                        Positioned.fill(child:SvgPicture.asset(ImagePath.hmo) ),
                        Container(
                          margin: EdgeInsets.only(left:wp(6)),
                          child:Row(
                            children: [
                              Container(
                                width: wp(42),
                                child: Stack(
                                  children: [
                                    
                                  ],
                                ),
                              ),
                             
                              Container(
                                
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top:20),
                                      child: Text('Services',
                                      style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                                        fontSize: 35
                                      ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:10),
                                      child: Text('Hire medical experts\nfor coperate,in-house\nservices and more',
                                      style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                                      ),
                                      ),
                                    ),
                                    InkWell(
                                             onTap: (){
                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalizedService()));
                                             },                            child: Container(
                                        child: Row(children: [
                                          Container(
                                            child:Text('Show More',
                                            style: DutyDoctorStyles.dutyDoctorButtonTextStyle(
                                              color:AppColor.duty_doctorGreen,
                                              fontSize: 13
                                            ),
                                            )
                                          ),
                                          IconButton(icon: Icon(Icons.arrow_forward_ios, size: 13,color: AppColor.duty_doctorGreen,), onPressed: null)
                                        ],),
                                      ),
                                    ),

                                    
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),
                        
                      ],
                     ),
                   ),
                 ),

                 Container(
                   margin: EdgeInsets.only(top:hp(6),left: wp(3),right: wp(3)),
                   width: wp(100),
                   height: hp(38),
                   child: Card(
                     child: Stack(
                      children: [
                        Positioned.fill(child:SvgPicture.asset(ImagePath.hmo) ),
                        Container(
                          margin: EdgeInsets.only(left:wp(6)),
                          child:Row(
                            children: [
                              Container(
                                width: wp(42),
                                child: Stack(
                                  children: [
                                    
                                  ],
                                ),
                              ),
                             
                              Container(
                                
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top:20),
                                      child: Text('Find Service\nProviders',
                                      style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                                        fontSize: 30,
                                        color: AppColor.duty_doctorTextBule
                                      ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top:10),
                                      child: Container(
                                                                              child: Text('Purchase your medical\nsupplies and\nprescriptions with\nquick delivery\nto your doorstep',
                                        style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                                        ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                             onTap: (){
                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceProviders()));
                                             },                             child: Container(
                                        child: Row(children: [
                                          Container(
                                            child:Text('Shop Now',
                                            style: DutyDoctorStyles.dutyDoctorButtonTextStyle(
                                              color:AppColor.duty_doctorTextBule,
                                              fontSize: 13,
                                              
                                            ),
                                            )
                                          ),
                                          IconButton(icon: Icon(Icons.arrow_forward_ios, size: 13,color: AppColor.duty_doctorTextBule,), onPressed: null)
                                        ],),
                                      ),
                                    ),

                                    
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),
                        
                      ],
                     ),
                   ),
                 ),

                  Container(
                   margin: EdgeInsets.only(top:hp(3),left: wp(3),right: wp(3)),
                   width: wp(100),
                   height: hp(35),
                   child: Card(
                     child: Stack(
                      children: [
                        Positioned.fill(child:SvgPicture.asset(ImagePath.e_health) ),
                        Container(
                          margin: EdgeInsets.only(left:wp(6)),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top:20),
                                child: Text('Consult\na Doctor',
                                style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                                  fontSize: 35
                                ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top:10),
                                child: Text('Get exceptional primary care\nfrom the comfort of your home\nand office instantly',
                                style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                                ),
                                ),
                              ),
                              InkWell(
                                       onTap: (){
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>GeneralConsultation()));
                                       },                       child: Container(
                                  child: Row(children: [
                                    Container(
                                      child:Text('Start Now',
                                      style: DutyDoctorStyles.dutyDoctorButtonTextStyle(
                                        color:AppColor.duty_doctorGreen,
                                        fontSize: 13
                                      ),
                                      )
                                    ),
                                    IconButton(icon: Icon(Icons.arrow_forward_ios, size: 13,color: AppColor.duty_doctorGreen,), onPressed: null)
                                  ],),
                                ),
                              ),

                              
                            ],
                          )
                        )
                      ],
                     ),
                   ),
                 ),

                 SizedBox(height: hp(6),),
                 Container(
                   margin: EdgeInsets.only(left: wp(3),right: wp(3)),
                   child: DoctorCard(image: 'null', doctorName: "null", hospitalName: "null", status: "null", rating: "null")),
                   SizedBox(height: hp(15),),

               ],
          
         ),
           ),
       ),
       bottomNavigationBar: BottomNavigationBar(
           currentIndex: _cIndex,
           type: BottomNavigationBarType.shifting,
           selectedItemColor: AppColor.duty_doctorGreen,
           items: [
               BottomNavigationBarItem(
               icon: InkWell(
                
                 child: SvgPicture.asset(ImagePath.home)),
               title:Text(''),
               activeIcon: SvgPicture.asset(ImagePath.home)
               ),
                BottomNavigationBarItem(
               icon: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsPage())); 
                 },
                 child: Icon(Icons.chat, color:AppColor.duty_doctorGreen)),
               title:InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsPage())); 
                 },
                 child: Text('')),
               activeIcon: Icon(Icons.chat, color:AppColor.duty_doctorGreen),
               ),
                 BottomNavigationBarItem(
               icon: InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainSerchPage())); 
                 },
                 child: Icon(Icons.search, color:AppColor.duty_doctorGreen)
                 ),
               title:Text(''),
               activeIcon: Icon(Icons.search, color:AppColor.duty_doctorGreen)
               ),
               
                BottomNavigationBarItem(
               icon: InkWell(
                 onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Placeholder())); 
                 },
                 child: Icon(Icons.calendar_today ,color:AppColor.duty_doctorGreen)),
               title:Text(''),
               activeIcon: Icon(Icons.chat, color:AppColor.duty_doctorGreen)
               ),
                BottomNavigationBarItem(
               icon: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsPage())); 
                 },
                 child: Icon(Icons.shopping_cart,color:AppColor.duty_doctorGreen)),
               title:InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Placeholder())); 
                 },
                 child: Text('')),
               activeIcon: Icon(Icons.shopping_cart,color:AppColor.duty_doctorGreen),
               )
           ],
           onTap: (index){
             _incrementTab(index);
           },
           
           ),
    );
  }
}