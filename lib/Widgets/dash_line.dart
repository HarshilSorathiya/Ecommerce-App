import 'package:flutter/material.dart';

class DashLine extends StatelessWidget {
  const DashLine({
    this.width = 7,
    this.height = 1.5,
    this.color = Colors.white,
  });
  final double width;
  final double height;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      builder: (p0, p1) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (p1.constrainWidth() / 16).floor(),
              (index) => SizedBox(
                  height: height,
                  width: width,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: color),
                  ))),
        );
      },
    ));
  }
}
