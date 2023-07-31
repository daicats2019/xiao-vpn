import 'package:flutter/material.dart';

import '../../Component/text_style/text_styles.dart';
import '../../model/app_image.dart';

import '../../utils/colors.dart';
import '../../utils/component/image_widget/svg_widget.dart';

class Supcription extends StatelessWidget {
  const Supcription({super.key, required this.svgPath, required this.title});
  final SvgPath svgPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgWidget(svgPath: svgPath),
        const SizedBox(
          width: 16,
        ),
        Text(
          title,
          style: AppTextStyle.regular16.copyWith(color: AppColor.white),
        ),
      ],
    );
  }
}
