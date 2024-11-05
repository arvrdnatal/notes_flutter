import 'package:flutter/material.dart';
import 'package:notes_flutter/themes/main_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.iconData,
    required this.onPressed,
  });

  final IconData iconData;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: secondaryColor,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            iconData,
            color: primaryColor,
            size: 28,
          ),
        ),
      ),
    );
  }
}
