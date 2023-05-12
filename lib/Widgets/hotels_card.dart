import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

class HotelCard extends StatelessWidget {
  const HotelCard(
      {super.key,
      required this.image,
      required this.city,
      required this.type,
      required this.perDayRent});
  final String image;
  final String city;
  final String type;
  final String perDayRent;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(14),
      width: 250,
      // (MediaQuery.of(context).size.width * .6),
      decoration: BoxDecoration(
          color: Styles.darkGreyColor, borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            type,
            style: Styles.headLineStyle2.copyWith(color: Colors.grey.shade400),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            city,
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "\$$perDayRent/night",
            style: Styles.headLineStyle1.copyWith(color: Colors.grey.shade400),
          )
        ],
      ),
    );
  }
}
