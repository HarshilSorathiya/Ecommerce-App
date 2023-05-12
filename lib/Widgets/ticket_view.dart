import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticket_booking_app/Widgets/thick_container.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

import 'dash_line.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ticketList.length,
        itemBuilder: (context, index) {
          var list = ticketList[index];
          return Container(
            width: 340,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Ticket(
              from: list['from']['name'],
              to: list['to']['name'],
              fromCityCode: list['from']['code'],
              toCityCode: list['to']['code'],
              duration: list['flying_time'],
              departuteDate: list['date'],
              departuteTime: list['departure_time'],
              seatNumber: list['number'].toString(),
              isColor: true,
            ),
          );
        },
      ),
    );
  }
}

class Ticket extends StatelessWidget {
  const Ticket(
      {super.key,
      required this.from,
      required this.to,
      required this.fromCityCode,
      required this.toCityCode,
      required this.duration,
      required this.departuteTime,
      required this.departuteDate,
      required this.seatNumber,
      required this.isColor});

  final String from;
  final String to;
  final String fromCityCode;
  final String toCityCode;
  final String duration;
  final String departuteTime;
  final String departuteDate;
  final String seatNumber;
  final bool isColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: 200,
        child: Column(children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                color: isColor ? Styles.darkGreyColor : Colors.white,
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70,
                      child: Text(
                        fromCityCode,
                        textAlign: TextAlign.start,
                        style: isColor
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                    ),
                    ThickContainer(
                      color: isColor
                          ? Colors.white
                          : Color.fromARGB(255, 115, 192, 255),
                    ),
                    SizedBox(
                      width: 70,
                      child: Text(
                        toCityCode,
                        textAlign: TextAlign.end,
                        style: isColor
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        from,
                        textAlign: TextAlign.start,
                        style: isColor
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.grey.shade500),
                      ),
                    ),
                    Text(
                      duration,
                      style: isColor
                          ? Styles.headLineStyle3.copyWith(color: Colors.white)
                          : Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        to,
                        textAlign: TextAlign.end,
                        style: isColor
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.grey.shade500),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
          Expanded(
            child: Container(
              height: 20,
              color: isColor ? Styles.orangeColor : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(10)))),
                  ),
                  isColor
                      ? DashLine()
                      : DashLine(
                          color: Colors.grey.shade400,
                        ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10)))),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
                color: isColor ? Styles.orangeColor : Colors.white,
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70,
                      child: Text(
                        departuteDate,
                        textAlign: TextAlign.start,
                        style: isColor
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                    ),
                    Text(
                      departuteTime,
                      style: isColor
                          ? Styles.headLineStyle3.copyWith(color: Colors.white)
                          : Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    SizedBox(
                      width: 70,
                      child: Text(
                        seatNumber,
                        textAlign: TextAlign.end,
                        style: isColor
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70,
                      child: Text(
                        'Date',
                        textAlign: TextAlign.start,
                        style: isColor
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.grey.shade500),
                      ),
                    ),
                    Text(
                      'Departure time',
                      style: isColor
                          ? Styles.headLineStyle4.copyWith(color: Colors.white)
                          : Styles.headLineStyle4
                              .copyWith(color: Colors.grey.shade500),
                    ),
                    SizedBox(
                      width: 70,
                      child: Text(
                        'Number',
                        textAlign: TextAlign.end,
                        style: isColor
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.grey.shade500),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
