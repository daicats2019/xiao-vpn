import 'package:flutter/material.dart';

class AppIconButtons extends StatelessWidget {
  const AppIconButtons({
    super.key,
    this.onPressed,
    required this.icon,
  });

  final Function()? onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        width: 110,
        height: 60,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(

          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: icon,
      ),
    );
  }
}
