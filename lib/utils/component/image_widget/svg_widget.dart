import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../model/app_image.dart';

class SvgWidget extends StatelessWidget {
  const SvgWidget({
    super.key,
    required this.svgPath,
    this.color,
    this.height,
    this.width,
  });
  final SvgPath svgPath;
  final double? height;
  final double? width;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: SvgPicture.asset(
        svgPath.path,
        width: width,
        height: height,
        colorFilter: color != null
            ? ColorFilter.mode(
                color!,
                BlendMode.srcIn,
              )
            : null,
      ),
    );
  }
}
