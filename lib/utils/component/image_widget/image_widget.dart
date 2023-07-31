import 'package:flutter/material.dart';

import '../../../model/app_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.appImage,
    this.width,
    this.height,
    this.boxFit,
  });
  final AppImage appImage;
  final double? width;
  final double? height;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        appImage.imageAsset,
        fit: boxFit ?? BoxFit.contain,
        height: height,
        width: width,
      ),
    );
  }
}
