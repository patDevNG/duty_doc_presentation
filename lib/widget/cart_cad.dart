import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp;
    final hp = Screen(context).hp;
    return Container(
      
      margin: EdgeInsets.only(top:hp(3)),
      height: hp(13),
      child: Card(
        
              child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              child: Image.asset(ImagePath.store),

            ),
            SizedBox(width: wp(3),),
            Center(
              child: Container(
                margin: EdgeInsets.only(right:wp(3)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:20),
                      child: Text('A180 Injectable Antibiotics',
                      style: DutyDoctorStyles.dutyDoctorGreenheaderStyle1(
                        fontSize: 13,
                        color:AppColor.duty_doctorBlack
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:wp(2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(child:Text('14,000',
                          style: DutyDoctorStyles.dutyDoctorGreenheaderStyle1(
                            fontSize: 15,fontWeight: FontWeight.bold
                          ),
                          ),
                        
                          ),
                          SizedBox(width:wp(30)),
                          Container(
                            child:Row(
                              
                              children: [
                              Container(
                                child:Icon(Icons.star, size: 15,color:AppColor.duty_doctorYellow)
                              ),
                              Container(
                                child:Icon(Icons.star, size: 15,color:AppColor.duty_doctorYellow)
                              ),
                              Container(
                                child:Icon(Icons.star, size: 15,color:AppColor.duty_doctorYellow)
                              ),
                              Container(
                                child:Icon(Icons.star, size: 15,color:AppColor.duty_doctorYellow)
                              ),
                              Container(
                                child:Icon(Icons.star, size: 15,color:AppColor.duty_doctorYellow)
                              ),
                            ],)
                          )
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
