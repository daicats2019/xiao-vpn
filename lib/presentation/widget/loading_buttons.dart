import 'package:flutter/material.dart';

import '../../utils/gen/colors.gen.dart';
import 'app_text.dart';

class LoadingButtons extends StatelessWidget {
  const LoadingButtons({
    super.key,
    required this.isLoading,
    required this.icon,
    required this.text,
    this.backgroundColor = AppColors.accent,
    this.height = 52,
    this.onPressed,
    this.margin,
  });

  final bool isLoading;
  final Widget icon;
  final String text;
  final Color backgroundColor;
  final Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: double.infinity,
          height: height,
        ),
        child: ElevatedButton.icon(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
          ),
          icon: isLoading
              ? Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.all(2),
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3,
                  ),
                )
              : icon,
          label: AppText(
            text: text,
            size: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
