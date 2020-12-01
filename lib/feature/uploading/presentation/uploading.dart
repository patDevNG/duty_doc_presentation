import 'package:dashed_circle/dashed_circle.dart';
import 'package:duty_doctor/feature/login/presentation/login.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:responsive_screen/responsive_screen.dart';

class UploadImagePage extends StatefulWidget {
  UploadImagePage({Key key}) : super(key: key);

  @override
  _UploadImagePageState createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
   final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
       body: 
            SingleChildScrollView(
                          child: Container(
                 width: wp(100),
                 height: hp(100),
                 child: Stack(
                   children: <Widget>[
                     Positioned.fill(
                       top: hp(-10),
                       left: wp(Sizes.HEIGHT_40),
                       child: SvgPicture.asset(ImagePath.registrationBg, alignment: Alignment.topRight,)),

                       Container(
                         margin: EdgeInsets.symmetric(horizontal:wp(10)),
                         child: Column(
                           children: [
                             Container(
                               margin: EdgeInsets.only(top:hp(6)),
                               child:Center(
                                 child: DashedCircle(
                             gapSize:3 ,
                             strokeWidth:.2,
                             child: CircleAvatar(
                                 radius: 80,
                                 backgroundColor: AppColor.duty_doctorWhite,
                                 child: Center(
                                   child: IconButton(icon: Icon(Icons.photo_camera, size:40, color:AppColor.duty_doctorLightGreen ,), onPressed: null),
                                 ),
                             ),
                             color: AppColor.duty_doctorGreen,
                           ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(top:hp(4)),
                               child:Text("Great Esther!! One more step",
                             style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(
                              
                             ),
                             )),

                              Container(
                               margin: EdgeInsets.only(top:hp(1)),
                               child:Text("Set your security PIN",
                             style: DutyDoctorStyles.dutyDoctorBlackSubHeaderStyle(
                              fontSize: 18
                             ),
                             )),

                             Container(
                               margin: EdgeInsets.only(top:hp(2)),
                               child:PinCodeFields(
                                 length: 4,
                                 obscureCharacter: '*',
                                 obscureText: true,
                                 fieldBorderStyle: FieldBorderStyle.Square,
                                 fieldHeight: 70,
                                 fieldWidth: 70,
                                 keyboardType: TextInputType.number,
                                 borderRadius: BorderRadius.circular(5),
                                 borderColor: AppColor.duty_doctorLightGreen,
                                 onComplete: (output){
                                   print(output);
                                 },
                               ),
                             ),

                             Container(
                               margin: EdgeInsets.only(top:hp(2)),
                               child: Text("By clicking the button below, you hereby agree\n to all our Terms Of Service & Privacy Policy"),
                             ),

                             Container(
                               margin: EdgeInsets.only(top:hp(3)),
                               width: wp(40 ),
                               child: CustomButton(
                             color: AppColor.duty_doctorYellow,
                             title: "Create Account",
                             onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                             },
                             textStyle: DutyDoctorStyles.dutyDoctorButtonTextStyle()
                       )
                             )
                           ],
                         ),
                       ),
                      //  Positioned(
                      //    top: hp(10),
                      //     left: wp(10),
                      //     right: wp(10),
                      //    child: Center(
                           
                      //    )
                      //    ),
                         Positioned.fill(
                       bottom:-40,
                       right: wp(50),
                       child: Container(
                       child: Image.asset(ImagePath.stetoscopeDown,alignment: Alignment.bottomLeft,
                     )
                     )
                     ),

                  // Positioned(
                  //   top: hp(40),
                  //   child: Container(
                  //     height: hp(40),
                  //     width: wp(100),
                  //     color: Colors.red,
                  //    child: PinPut(fieldsCount: 4),

                  //   ),
                  // )
                      //  Positioned(
                      //      top: hp(10),                   child: Container(
                      //      child: Center(
                      //        child: PinEntryTextField(
                      //          onSubmit: (){},
                      //          fields: 4,
                      //          showFieldAsBox: true,
                      //          isTextObscure: true,
                      //          fieldWidth: 57,
                      //        ),
                      //      ),
                      //    ),
                      //  ),
                    
                   ],
                 ),
               ),
            ),
           
            //  Container(
            //    margin: EdgeInsets.only(top:hp(2)),
            //    width: wp(40),
            //    child: CustomButton(
            //      width: wp(40),
            //      color: AppColor.duty_doctorYellow,
            //      title: "Next",
            //      onPressed: (){
           
            //      },
            //      textStyle: DutyDoctorStyles.dutyDoctorButtonTextStyle()
            //    ),
            //  ),
            //  Container(
            //    height: hp(43),
            //    width: wp(100),
            //    child: Stack(
            //      children: <Widget>[
                   
            //      ],
            //    ),
            //  )
          
        
    );
  }
}