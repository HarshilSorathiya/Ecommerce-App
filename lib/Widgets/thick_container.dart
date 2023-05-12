import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: color),
              borderRadius: BorderRadius.circular(20)),
        ),
        Text(
          '- - -',
          style: Styles.headLineStyle4.copyWith(color: color),
        ),
        RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.airplanemode_active,
              color: color,
            )),
        Text(
          '- - -',
          style: Styles.headLineStyle4.copyWith(color: color),
        ),
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: color),
              borderRadius: BorderRadius.circular(20)),
        ),
      ],
    );
  }
}
