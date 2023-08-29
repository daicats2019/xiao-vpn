import 'package:flutter/material.dart';

import '../../utils/gen/colors.gen.dart';

class AppLargeText extends StatelessWidget {
  const AppLargeText({
    super.key,
    this.size = 18,
    required this.text,
    this.color = AppColors.textPrimary,
    this.textAlign,
  });

  final double size;
  final String text;
  final Color color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
