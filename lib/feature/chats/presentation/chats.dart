import 'package:dotted_border/dotted_border.dart';
import 'package:duty_doctor/feature/chats/presentation/main_chat.dart';
import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class ChatsPage extends StatefulWidget {
  ChatsPage({Key key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Scaffold(
       body: ListView(
         children: [
           Container(
             height: hp(15),
              width: wp(100),
             color:AppColor.duty_doctorGreen,
              child:Container(
                height: 50,
                
                margin: EdgeInsets.only(top:hp(3),left:wp(6),right:wp(6)),
                child: CustomTextFormFieldWithSuffix(
                 textInputType: TextInputType.text,
                 fillColor: AppColor.duty_doctorWhite,
                 filled: true,
                              border: Borders.outlineBorder,
                              enabledBorder: Borders.outlineEnabledBorder,
                              hintText: "Search Chats",
                              focusedBorder: Borders.outlineFocusedBorder,
                              labelStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                              hintTextStyle:
                              DutyDoctorStyles.dutyDoctorBlackHintTextStyle(),
                              textStyle: DutyDoctorStyles.dutyDoctorsStyle(),
                              enabled: true,
                              hasSufixIcon: true,
                              suffixIcon: IconButton(icon: Icon(Icons.search), onPressed: null),
                ),
              )
            ),
            Container(
              height: hp(20),
              width: double.infinity,
              // color: Colors.red,
              child: Material(
                elevation: 8,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ChatTopMenu(),
                     ChatTopMenu(),
                      ChatTopMenu(),
                       ChatTopMenu(),
                        ChatTopMenu(),
                         ChatTopMenu(),
                          ChatTopMenu(),
                  ],
                ),
              ),
            ),
           ChatCards(),
           ChatCards(),
           ChatCards(),
           ChatCards(),
           ChatCards(),
           ChatCards(),
         ],
         )
    );
  }
}

class ChatCards extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainChat()));
      },
          child: Container(
        margin: EdgeInsets.only(top:20, left: 20,right: 20),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  child: Row(children: [
                    Container(
                     height: 70,
       width: 70,
       decoration: BoxDecoration(
               shape: BoxShape.circle,
               // color: Colors.green,
       ),
       child:ClipOval(child: Image.asset(ImagePath.pat),)
                    ),
                    SizedBox(width: wp(3),),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text("Dr. Okuns Patrick",
                            style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color:AppColor.duty_doctorBlack
                            ),
                            ),
                          ),
                          Container(
                            child: Text('You are welcome. By the way...',
                            overflow: TextOverflow.ellipsis,
                            style:DutyDoctorStyles.dutyDoctorBlackHintTextStyle()
                            ),
                          )
                        ],
                      ),
                    )
                  ],),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child:Text("3.25 PM",
                        style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                          color: AppColor.duty_doctorGreen
                        ),
                        )
                      ),
                       Container(
                         child: Icon(Icons.check, color: AppColor.duty_doctorGreen,),
                       )
                    ],
                  ),
                ),
              ],),
            ),
            Container(
              margin: EdgeInsets.only(top:20),
              width: wp(100),
              height: 1,
              color: AppColor.duty_doctorGrey.withOpacity(0.2),
            )
          ],
        ),
      ),
    );
  }
}

class ChatTopMenu extends StatelessWidget {
 

 

  @override
  Widget build(BuildContext context) {
    final hp = Screen(context).hp;
    final wp = Screen(context).wp;
    return Container(
      margin: EdgeInsets.only(top:hp(3), left: wp(3)),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.green,
            ),
            child:DottedBorder(
              borderType: BorderType.Circle,
              strokeWidth: 1,
              color: AppColor.duty_doctorBlack,
               child: ClipOval(
          child:Image.asset(ImagePath.pat, fit: BoxFit.contain,)
              ),
            )
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            child: Text("Dr. Patrick",
            style: DutyDoctorStyles.dutyDoctorButtonTextStyle(
              color:AppColor.duty_doctorBlack,
              fontSize: 11
            ),
            ),
          )
        ],
      ),
    );
  }
}