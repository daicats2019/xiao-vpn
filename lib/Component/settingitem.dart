import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/data_item.dart';

Widget settingItem(BuildContext context, SettingApp item ) {

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      width: 374,
      height: 60,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                SizedBox(
                    width: 32,
                    height: 32,
                    child:
                    Image.asset(item.imagelogo)),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
                width: 9,
                height: 15,
                child: Image.asset(
                  item.button,
                  fit: BoxFit.contain,
                )),
          )
        ],
      ),
    ),
  );
}