import 'package:flutter/material.dart';

/// Custom widget that creates a container with an icon inside and optional gradient background
class OnTapContainer extends StatelessWidget {
  /// Colors for the container's gradient background
  final Color gradient1OfContainer;
  final Color gradient2OfContainer;

  /// Dimensions of the container
  final double containerHeight;
  final double containerWidth;

  /// Icon size and icon itself that will be displayed inside the container
  final double iconSize;
  final Icon containerIcon;

  /// Constructor to initialize required parameters
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
      /// Sets height and width of the container
      height: containerHeight,
      width: containerWidth,

      /// Container decoration with border, border radius, and gradient background
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.64),

        /// Adding a subtle border around the container
        border: Border.all(
          width: 0.95,
          color: const Color.fromRGBO(55, 73, 87, 0.2),
        ),

        /// Applying a gradient to the background
        gradient: LinearGradient(colors: [
          gradient1OfContainer,
          gradient2OfContainer,
        ]),
        
      ),

      /// Placing an icon inside the container
      child: Icon(
        containerIcon.icon,

        /// Icon color is set to white
        color: const Color.fromRGBO(255, 255, 255, 1),

        /// Icon size defined by the passed parameter
        size: iconSize,
      ),
    );
  }
}
