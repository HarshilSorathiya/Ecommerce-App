import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticket_booking_app/Widgets/search_bar.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

import '../Widgets/search_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('What are', style: Styles.headLineStyle0),
                // SizedBox(
                //   height: 5,
                // ),
                Text(
                  'you looking for?',
                  style: Styles.headLineStyle0,
                ),
                SizedBox(
                  height: 30,
                ),
                SearchButton(
                  firstLabel: 'Airplan Tickets',
                  secondLabel: 'Hotels',
                ),
                SizedBox(
                  height: 25,
                ),
                SearchBar(
                  icon: Icons.flight_takeoff,
                  hintText: "Departure",
                ),
                SizedBox(
                  height: 25,
                ),
                SearchBar(
                  icon: Icons.flight_land_sharp,
                  hintText: "Arrival",
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Styles.blueColor),
                  onPressed: () {},
                  child: Text(
                    'Find tickes',
                    style: Styles.headLineStyle3.copyWith(
                        color: Colors.white,
                        letterSpacing: .6,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'Upcoming Flights',
                          style: Styles.headLineStyle2,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'View all',
                            style: Styles.headLineStyle4
                                .copyWith(color: primaryColor),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(17),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/airplan.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '20% discount on the early booking of the flight. Don\'t miss out this chance.',
                        style: Styles.headLineStyle2,
                      )
                    ]),
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              )),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Container(
                        child: Column(children: [
                          Text(
                            'Discount    for survey',
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Take the    survey about our services    and get discount ',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white, fontSize: 18),
                          )
                        ]),
                        padding: EdgeInsets.all(20),
                        height: 210,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      Positioned(
                        top: -30,
                        right: -35,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 15, color: Color(0xff189999))),
                        ),
                      )
                    ]),
                    SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Take Love',
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(height: 25),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 30),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 40),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 30),
                              )
                            ]),
                          )
                        ],
                      ),
                      height: 200,
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 92, 49),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
