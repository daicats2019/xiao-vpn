import 'package:flutter/material.dart';

import '../../Component/text_style/text_styles.dart';
import '../../generated/l10n.dart';
import '../../utils/colors.dart';

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: AppColor.purple1, borderRadius: BorderRadius.circular(14)),
        child: Center(
          child: Text(
            S.current.ctn,
            style: AppTextStyle.regular16.copyWith(color: AppColor.white),
          ),
        ),
      ),
    );
  }
}
