import 'package:duty_doctor/feature/about/presentation/about.dart';
import 'package:duty_doctor/feature/refer_and_earn/refer_and_earn.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_screen/responsive_screen.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Drawer(
      child: Container(
        margin: EdgeInsets.only(left:wp(2),right:wp(2), top: hp(2)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: hp(40),
              // color:Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Container(
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
                        Container(
                          child: IconButton(icon: Icon(Icons.close,color:AppColor.duty_doctorBlack), onPressed: (){
                            Navigator.pop(context);
                          }),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:hp(1.5)),
                           height: 100,
                           width: 100,
                           decoration: BoxDecoration(
                           shape: BoxShape.circle,
               // color: Colors.green,
       ),
                          child: ClipOval(child: Image.asset(ImagePath.pat))
                         ),
                         Container(
                           margin: EdgeInsets.only(top:hp(2)),
                           child: Text("Hi Patrick",
                           style: DutyDoctorStyles.dutyDoctorGreenheaderStyle(
                             fontSize: 25,
                             color: AppColor.duty_doctorBlack
                           )
                           ),
                         ),
                          Container(
                             margin: EdgeInsets.only(top:hp(0.5)),
                           child: Text("patrick@dutydoctors.com",
                           style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                           ),
                         ),
                         Container(
                            margin: EdgeInsets.only(top:hp(2.5)),
                           width: wp(100),
                           height: 1,
                           color: AppColor.duty_doctorGrey.withOpacity(0.2),
                         )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.account_box),
                  Padding(padding: EdgeInsets.only(left:8),
                  child: Text("Manage Account"),
                  )
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.account_box),
                  Padding(padding: EdgeInsets.only(left:8),
                  child: Text("Refer & Earn"),
                  )
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ReferEarn()));
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.account_box),
                  Padding(padding: EdgeInsets.only(left:8),
                  child: Text("About Duty Doctor"),
                  )
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}