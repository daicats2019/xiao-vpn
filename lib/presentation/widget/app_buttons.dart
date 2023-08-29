import 'package:flutter/material.dart';

import '../../utils/gen/colors.gen.dart';
import 'app_medium_text.dart';

class AppButtons extends StatelessWidget {
  const AppButtons({
    super.key,
    required this.text,
    this.icon,
    this.backgroundColor = AppColors.accent,
    this.onPressed,
    this.margin,
    this.height = 52,
    this.width,
  });

  final Widget? icon;
  final String text;
  final Color backgroundColor;
  final Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final double height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    late Widget child;
    if (icon != null) {
      child = ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        icon: icon!,
        label: AppMediumText(
          text: text,
          color: Colors.white,
        ),
      );
    } else {
      child = ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        child: AppMediumText(
          text: text,
          color: Colors.white,
        ),
      );
    }
    return Container(
      margin: margin,
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: width ?? double.infinity,
          height: height,
        ),
        child: child,
      ),
    );
  }
}
