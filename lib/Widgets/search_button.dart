import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    required this.firstLabel,
    required this.secondLabel,
  });

  final String firstLabel;
  final String secondLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: Styles.lightBlueColor,
          borderRadius: BorderRadius.circular(30)),
      child: Row(children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(30))),
              child: Text(
                firstLabel,
                style: Styles.headLineStyle4.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              )),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: Styles.lightBlueColor,
              borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(30))),
          child: Text(
            secondLabel,
            style: Styles.headLineStyle4.copyWith(color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        ))
      ]),
    );
  }
}
