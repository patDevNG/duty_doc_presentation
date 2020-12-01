import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_screen/responsive_screen.dart';

class MainDashBoard extends StatefulWidget {
  MainDashBoard({Key key}) : super(key: key);

  @override
  _MainDashBoardState createState() => _MainDashBoardState();
}

class _MainDashBoardState extends State<MainDashBoard>with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length:2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
       body: Container(
         height: hp(100),
         width: wp(100),
         child: Stack(
           children: [
             Container(
               height: 85,
               child: AppBar(
                 leading: IconButton(icon: Icon(Icons.menu,color:Colors.white), onPressed: null),
               ),
             ),
             Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                       
                     ),
                     height: hp(45),
                     child: Stack(
                       children: [
                         Positioned.fill(child: SvgPicture.asset(ImagePath.dashboard1, fit: BoxFit.cover,)),
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
                                    
                                    child: IconButton(icon: Icon(Icons.menu, color: AppColor.duty_doctorWhite,size: 40,),onPressed: (){},),
                                  ),
                                  Container(
                                    child: IconButton(icon: Icon(Icons.notifications, color: AppColor.duty_doctorWhite,),onPressed: (){},),
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

                Positioned(
                  top:hp(40),
                                child: Container(
                    height: hp(50),
                    width: wp(Sizes.HEIGHT_100),
                    child: Column(
                      children: [
                        Container(
                   margin: EdgeInsets.only(left: wp(3),right: wp(3)),
                   width: wp(100),
                   height: hp(28),
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
                              Container(
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

                              
                            ],
                          )
                        ),
                        
                      ],
                     ),
                   ),
                 ), 
                  Container(
                   margin: EdgeInsets.only(top:hp(2),left: wp(3),right: wp(3)),
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
                                    Container(
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
                     margin: EdgeInsets.only(top:hp(4),left: wp(3),right: wp(3)),
                     child: Text("Categories",
                     style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                       fontSize: 25,
                       color: AppColor.duty_doctorBlack
                     ),
                     ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        ButtonsTabBar(
                          unselectedBorderColor: Colors.red,
                          labelStyle: DutyDoctorStyles.dutyDoctorSmallTextStyle(),
                          controller: tabController,
                          
                          tabs: [
                            Tab(
                              child:Text("testttttt"),
                            ),
                            Tab(
                              child:Text("testttttt"),
                            )
                          ]),
                          TabBarView(
                            controller: tabController,
                            children: [
                            Container(child:Text('hhhh')),
                             Container(child:Text('hhhh'))
                          ])
                      ],
                    ),
                  )

                      ],
                    ),
                  ),
                )
           ],
         ),
       ),
    );
  }
}