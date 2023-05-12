import 'package:flutter/material.dart';
import 'package:ticket_booking_app/Widgets/search_bar.dart';
import 'package:ticket_booking_app/Widgets/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

import '../Widgets/hotels_card.dart';
import '../utils/app_info_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(AppLayout.getScreenheight);
    print(AppLayout.getScreenwidth);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good Morning', style: Styles.headLineStyle3),
                      SizedBox(height: 3),
                      Text("Book Tickets", style: Styles.headLineStyle1)
                    ],
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/img_1.png')),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              SearchBar(
                icon: Icons.search,
                hintText: "search",
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text("UpComing Flights", style: Styles.headLineStyle2),
                  InkWell(
                    child: Text('View all',
                        style: Styles.textStyle.copyWith(color: primaryColor)),
                  ),
                ],
              ),
            ]),
          ),
          TicketView(),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Hotels',
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View all',
                      style:
                          Styles.headLineStyle4.copyWith(color: primaryColor),
                    ),
                  )
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 20,
            ),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 370,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelList.length,
                  itemBuilder: (context, index) {
                    return HotelCard(
                      image: 'assets/images/${hotelList[index]['image']}',
                      city: hotelList[index]['destination'],
                      type: hotelList[index]['place'],
                      perDayRent: hotelList[index]['price'].toString(),
                    );
                  },
                )),
          )
        ],
      ),
    );
  }
}
