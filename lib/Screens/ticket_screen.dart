import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticket_booking_app/Widgets/dash_line.dart';
import 'package:ticket_booking_app/Widgets/search_bar.dart';
import 'package:ticket_booking_app/Widgets/thick_container.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

import '../Widgets/basic_container.dart';
import '../Widgets/search_button.dart';
import '../Widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  TicketScreen({super.key});
  var list = ticketList[0];
  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisAlignment: MainAxisAlignment.start,
      // scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tickets',
                style: Styles.headLineStyle0,
              ),
              SizedBox(height: 25),
              SearchButton(firstLabel: 'Upcoming', secondLabel: 'Previous'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          width: 350,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 194,
                  child: Ticket(
                    from: list['from']['name'],
                    to: list['to']['name'],
                    fromCityCode: list['from']['code'],
                    toCityCode: list['to']['code'],
                    duration: list['flying_time'],
                    departuteDate: list['date'],
                    departuteTime: list['departure_time'],
                    seatNumber: list['number'].toString(),
                    isColor: false,
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey.shade300,
                ),
                BasicContainer(
                    fr1: "Flutter Dash",
                    fr2: "Passenger",
                    sr1: "5520 228586",
                    sr2: 'Passport'),
                Container(
                    height: 2,
                    child: DashLine(
                      height: 1,
                      color: Colors.grey.shade300,
                    )),
                BasicContainer(
                    fr1: "0055 44 77147",
                    fr2: "Number of E-ticket",
                    sr1: "B2SG29",
                    sr2: 'Booking Code'),
                Container(
                    height: 2,
                    child: DashLine(
                      height: 1,
                      color: Colors.grey.shade300,
                    )),
                Container(
                  // color: Color.fromARGB(255, 255, 231, 222),
                  padding: EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 13,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fitWidth,
                                          image: AssetImage(
                                              'assets/images/visa.png'))),
                                ),
                                Text(
                                  '  ***7895',
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Payment Methode',
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$299.99",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Price",
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        )
                      ]),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey.shade300,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  height: 120,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: BarcodeWidget(
                      barcode: Barcode.gs128(),
                      data: "https://github.com/HarshilSorathiya",
                      drawText: false,
                    ),
                  ),
                )
              ]),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          height: 195,
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
        ),
      ],
    );
  }
}
