import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ErroPage extends StatefulWidget {
  const ErroPage({Key? key}) : super(key: key);

  @override
  State<ErroPage> createState() => _ErroPageState();
}

class _ErroPageState extends State<ErroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: Image.asset('assets/images/Vector top right.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Image.asset('assets/images/Vector top left.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 320),
              child: Image.asset('assets/images/Vector mid right.png'),
            ),
            Image.asset('assets/images/Group 13.png'),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 396,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ':((',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                          'The network connection is interrupted. Please double check your connection or device',style: TextStyle(fontSize: 20),),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
