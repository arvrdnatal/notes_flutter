import 'package:flutter/material.dart';
import 'package:notes_flutter/themes/main_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.padding = EdgeInsets.zero,
    this.activated = false
  });

  final IconData iconData;
  final Function()? onPressed;
  final bool activated;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Material(
        color: activated ? primaryColor : secondaryColor,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              iconData,
              color: activated ? secondaryColor : primaryColor,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
