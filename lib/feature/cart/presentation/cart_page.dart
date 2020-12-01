import 'package:duty_doctor/values/value.dart';
import 'package:duty_doctor/widget/cart_cad.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp;
    final hp = Screen(context).hp;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: wp(6),left:wp(6)),
        width: wp(100),
        height: hp(100),
        child: Column(
          children: [
            Container(
              width: wp(100),
              height: hp(80),
              // color: Colors.red,
              child: ListView(
                children: [
                  Container(
                    
                    child: CartCard(),
                  )
                ],
              ),
            ),
            Container(
              
              width: wp(100),
              height: hp(16) ,
              margin: EdgeInsets.only(top: hp(2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: wp(100),
                    height: 1,
                    color: AppColor.duty_doctorGrey.withOpacity(0.4),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:hp(1.5)),
                    child: Text('Total',
                    style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle(
                      fontSize: 11
                    ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('14,000',
                                style: DutyDoctorStyles.dutyDoctorGreenheaderStyle1(
                                  
                                ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
