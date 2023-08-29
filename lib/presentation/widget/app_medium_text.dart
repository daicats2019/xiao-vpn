import 'package:flutter/material.dart';

import '../../utils/gen/colors.gen.dart';

class AppMediumText extends StatelessWidget {
  const AppMediumText({
    super.key,
    this.size = 14,
    required this.text,
    this.color = AppColors.textPrimary,
  });

  final double size;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
