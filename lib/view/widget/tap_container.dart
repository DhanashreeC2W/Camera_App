import 'package:flutter/material.dart';


class OnTapContainer extends StatelessWidget {
  final Color gradient1OfContainer;
   final Color gradient2OfContainer;
  final double containerHeight;
  final double containerWidth;
  final double iconSize;
  final Icon containerIcon;
  const OnTapContainer(
      {super.key,
      required this.gradient1OfContainer,
       required this.gradient2OfContainer,
      required this.containerHeight,
      required this.containerWidth,
      required this.iconSize,
      required this.containerIcon,
      });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.64),
          border: Border.all(
              width: 0.95, color: const Color.fromRGBO(55, 73, 87, 0.2)),
          gradient:  LinearGradient(colors: [
            gradient1OfContainer,
            gradient2OfContainer,
          ]),
          // boxShadow: const [
          //   BoxShadow(
          //       offset: Offset(0, 15.17),
          //       blurRadius: 34.89,
          //       color: Color.fromRGBO(0, 0, 0, 0.25))
          // ]
          ),
      child: Icon(
        containerIcon.icon ,
        color: const Color.fromRGBO(255, 255, 255, 1),
        size: iconSize,
      ),
    );
  }
}
