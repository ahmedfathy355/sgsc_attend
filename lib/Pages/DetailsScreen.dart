import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:date_format/date_format.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:timelines/timelines.dart';

class DetailsScreen extends StatelessWidget {
  // static const routeName = 'item-details-screen/';
  final RoundedLoadingButtonController _btnController = new RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(Duration(seconds: 3), () {
      if(_btnController.success())
        {
          _btnController.start();
        }
      else
        {
          _btnController.success();
        }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child:Column(
        children: [
          aaaaa(context),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              aaaa2(context),
              aaaa2(context),
            ],
          ),

        ],
      )
    );

  }
  Widget aaaaa(BuildContext context){
    return  Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width  - 40 ,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Color(0x419AA5A7),
                  blurRadius: 5,
                  offset: Offset(4,4)
              ),
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            DigitalClock(
              digitAnimationStyle: Curves.elasticOut,
              is24HourTimeFormat: false,
              areaDecoration: BoxDecoration(
                color: Colors.transparent,
              ),
              secondDigitDecoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent)
              ),
              hourMinuteDigitDecoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent)
              ),
              hourMinuteDigitTextStyle: TextStyle(
                color: Color(0xFF00518b),
                fontSize: 50,
              ),
              amPmDigitTextStyle: TextStyle(
                  color: Color(0xFF00518b), fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 10,
            ),
            Center(child: Text(formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]) , style: TextStyle(              color: Color(0xFF00518b),
              fontSize: 25,),)),
            SizedBox(
              height: 30,
            ),
            RoundedLoadingButton(
              elevation: 5,
              borderRadius: 120,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(child: Text('Punch in ', style: TextStyle(color: Colors.white,fontSize: 22),),),
                  SizedBox(width: 10,),
                  SvgPicture.asset('assets/svg/checkin.svg',width: 50
                    ,)
                ],
              ),
              controller: _btnController,
              onPressed: _doSomething,
              height: 70,
              color: Color(0xFF35B1B7),
              successColor: Color(0xFF2FD686),
            ),
            SizedBox(
              height: 15,
            ),
            Center(child: Text('115/m Distance To cermic@' ,
              style: TextStyle(
                color: Color(0xFF308AF3),
                fontSize: 15,),)),

          ],
        )
    );

  }

  Widget aaaa2(BuildContext context){
    return  Container(
        margin: EdgeInsets.only(top: 0),
        padding: EdgeInsets.all(20),
       // width: MediaQuery.of(context).size.width  - 40 ,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Color(0x419AA5A7),
                  blurRadius: 5,
              ),
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
            SizedBox(height: 10,),
            Text(formatDate(DateTime.now().add(Duration(days: -1)), [yyyy, '-', mm, '-', dd, ' ' , '08',':','30',':','am']) , style: TextStyle(  color: Color(0xFF00518b),
              fontSize: 15,),),
            SizedBox(width: 10,),
            SvgPicture.asset('assets/svg/checkin.svg',width:20,color: Color(0xFF35B1B7),),
            Container(color: Colors.black,width: 2,),
             SizedBox(width: 5,),
          ],
        )
    );

  }
}

