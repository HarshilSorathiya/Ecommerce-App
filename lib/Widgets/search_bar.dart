import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ticket_booking_app/utils/app_style.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, required this.icon, required this.hintText});
  final IconData icon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Icon(
          icon,
          color: Color.fromARGB(255, 167, 167, 167),
        ),
        SizedBox(width: 15),
        Expanded(
          child: TextFormField(
            onChanged: (value) {
              print(value);
            },
            controller: TextEditingController(),
            style: Styles.headLineStyle3,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Styles.headLineStyle3,
              border: InputBorder.none,
            ),
          ),
        )
      ]),
    );
  }
}
