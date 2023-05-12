import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class BasicContainer extends StatelessWidget {
  const BasicContainer({
    super.key,
    required this.fr1,
    required this.fr2,
    required this.sr1,
    required this.sr2,
    this.verticalPadding = 22,
    this.horizontalPadding = 20,
  });

  final String fr1;
  final String fr2;
  final String sr1;
  final String sr2;
  final double verticalPadding;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromARGB(255, 255, 231, 222),
      padding: EdgeInsets.symmetric(
          vertical: verticalPadding, horizontal: horizontalPadding),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fr1,
              style: Styles.headLineStyle3.copyWith(color: Colors.black),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              fr2,
              style: Styles.headLineStyle4,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              sr1,
              style: Styles.headLineStyle3.copyWith(color: Colors.black),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              sr2,
              style: Styles.headLineStyle4,
            ),
          ],
        )
      ]),
    );
  }
}
