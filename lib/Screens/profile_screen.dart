import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticket_booking_app/Widgets/basic_container.dart';
import 'package:ticket_booking_app/Widgets/dash_line.dart';

import '../utils/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Row(children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/img_1.png')),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'Book Tickts',
                              style: Styles.headLineStyle1,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Edit  ',
                                style: Styles.headLineStyle4
                                    .copyWith(color: primaryColor),
                              ),
                            )
                          ]),
                      Text(
                        'New-York',
                        style: Styles.headLineStyle4,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        height: 25,
                        width: 148,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 242, 233, 233),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 11,
                                backgroundColor: Styles.darkGreyColor,
                                child: Center(
                                    child: Icon(
                                  Icons.shield,
                                  size: 16,
                                  color: Colors.white,
                                ))),
                            Text(
                              '  Premium Status',
                              style: Styles.headLineStyle4
                                  .copyWith(color: Styles.darkGreyColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(children: [
              Container(
                padding: EdgeInsets.all(18),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primary,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Center(
                            child: Icon(
                          Icons.lightbulb,
                          size: 30,
                          color: Styles.darkGreyColor,
                        ))),
                    SizedBox(
                      width: 13,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award ',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontSize: 21,
                              letterSpacing: .5),
                        ),
                        Text(
                          'you have 150 flights in a year',
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: -30,
                top: -30,
                child: Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      border: Border.all(width: 14, color: Styles.blueColor),
                      borderRadius: BorderRadius.circular(80)),
                ),
              ),
            ]),
            SizedBox(
              height: 35,
            ),
            Text(
              'Accumulated miles',
              style: Styles.headLineStyle2.copyWith(letterSpacing: .5),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              child: Text(
                '186590',
                textAlign: TextAlign.center,
                style: Styles.headLineStyle0
                    .copyWith(fontSize: 45, letterSpacing: 3),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Miles accrued',
                          style: Styles.headLineStyle3,
                        ),
                        Text(
                          '23 May, 2021',
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 1,
                    height: 2,
                    color: Colors.grey.shade300,
                  ),
                  BasicContainer(
                    fr1: '23 041',
                    fr2: 'Miles',
                    sr1: 'Airline CO',
                    sr2: 'Received from',
                    verticalPadding: 15,
                  ),
                  Container(
                      height: 2,
                      width: 340,
                      child: DashLine(
                        color: Colors.grey.shade300,
                      )),
                  BasicContainer(
                    fr1: '25',
                    fr2: 'Miles',
                    sr1: 'Mc\'donal\'s',
                    sr2: 'Received from',
                    verticalPadding: 15,
                  ),
                  Container(
                      height: 2,
                      width: 340,
                      child: DashLine(
                        color: Colors.grey.shade300,
                      )),
                  BasicContainer(
                    fr1: '56 230',
                    fr2: 'Miles',
                    sr1: 'Exuma',
                    sr2: 'Received from',
                    verticalPadding: 15,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'How to get more Miles',
                      style:
                          Styles.headLineStyle3.copyWith(color: Styles.primary),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
