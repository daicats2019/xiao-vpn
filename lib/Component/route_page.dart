import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget routePage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 70),
    child: Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
    ),
  );
}