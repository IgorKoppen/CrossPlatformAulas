import 'package:flutter/material.dart';

import '../constants.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  final bool isSelected;
  final void Function()? fn;
  const CustomCard({super.key, this.child, this.isSelected = false, this.fn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fn,
      child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: isSelected ? activeCardColour : inactiveCardColour,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: child),
    );
  }
}
