import 'package:flutter/material.dart';

import '../../Component/text_style/text_styles.dart';
import '../../generated/l10n.dart';

import '../../utils/colors.dart';

class PurchaseCaseItem extends StatelessWidget {
  const PurchaseCaseItem(
      {super.key,
      required this.value,
      required this.duration,
      required this.onPressed,
      required this.isSelected});
  final String value;
  final String duration;
  final bool isSelected;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 32),
        height: 68,
        decoration: BoxDecoration(
          color: AppColor.second,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1 $duration',
                  style: AppTextStyle.regular16.copyWith(color: AppColor.white),
                ),
                const SizedBox(
                  height: 11,
                ),
                Text(
                  '$value ${S.current.after}',
                  style: AppTextStyle.regular12
                      .copyWith(color: AppColor.unselected),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
