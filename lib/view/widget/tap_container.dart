import 'package:flutter/material.dart';

/// CUSTOM WIDGET THAT CREATES A CONTAINER WITH AN ICON INSIDE AND OPTIONAL GRADIENT BACKGROUND
class OnTapContainer extends StatelessWidget {
  /// Colors for the container's gradient background
  final Color gradient1OfContainer;
  final Color gradient2OfContainer;

  /// DIMENSIONS OF THE CONTAINER
  final double containerHeight;
  final double containerWidth;

  /// ICON SIZE AND ICON ITSELF THAT WILL BE DISPLAYED INSIDE THE CONTAINER
  final double iconSize;
  final Icon containerIcon;

  /// CONSTRUCTOR TO INITIALIZE REQUIRED PARAMETERS
  const OnTapContainer({
    super.key,
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
      /// SETS HEIGHT AND WIDTH OF THE CONTAINER
      height: containerHeight,
      width: containerWidth,

      /// CONTAINER DECORATION WITH BORDER, BORDER RADIUS, AND GRADIENT BACKGROUND
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.64),

        /// ADDING A SUBTLE BORDER AROUND THE CONTAINER
        border: Border.all(
          width: 0.95,
          color: const Color.fromRGBO(55, 73, 87, 0.2),
        ),

        /// APPLYING A GRADIENT TO THE BACKGROUND
        gradient: LinearGradient(
          colors: [
            gradient1OfContainer,
            gradient2OfContainer,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),

      /// PLACING AN ICON INSIDE THE CONTAINER
      child: Icon(
        containerIcon.icon,

        /// ICON COLOR IS SET TO WHITE
        color: const Color.fromRGBO(255, 255, 255, 1),

        /// ICON SIZE DEFINED BY THE PASSED PARAMETER
        size: iconSize,
      ),
    );
  }
}
