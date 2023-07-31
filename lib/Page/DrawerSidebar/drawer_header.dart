import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DrawerHeaderPage extends StatefulWidget {
  const DrawerHeaderPage({Key? key}) : super(key: key);

  @override
  State<DrawerHeaderPage> createState() => _DrawerHeaderPageState();
}

class _DrawerHeaderPageState extends State<DrawerHeaderPage> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.only(top: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Icon(
                    Icons.clear,
                    size: 30,
                  ),
                ),
                Image.asset('assets/images/illustrations.png'),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Settings',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }

}
