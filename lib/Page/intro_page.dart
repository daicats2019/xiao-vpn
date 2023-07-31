import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Route/route_name.dart';
import '../utils/colors.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,

      body: SafeArea(
        child: Column(
          children: [
              Padding(
              padding: const EdgeInsets.only(left: 260),
              child: Image.asset('assets/images/Vector top right.png'),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Image.asset('assets/images/Vector top left.png'),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 320),
              child: Image.asset('assets/images/Vector mid right.png'),
            ),
            SizedBox(height: 60,),
            TextButton(
              style: ElevatedButton.styleFrom(
               backgroundColor: AppColor.background
              ),
                onPressed: () { 
                  Navigator.pushNamed(context, RouteNamePage.confirmPage,arguments: null);
                },
                child: Image.asset('assets/images/Group 11.png'),
            ),
            SizedBox(height: 115,),
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Image.asset('assets/images/Vector top left.png'),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: Image.asset('assets/images/Vector bot right.png'),
            ),
            SizedBox(height: 30 ,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Image.asset('assets/images/Vector bot left.png'),
                ),
                Center(
                  child: Text('Fast - Safe - Unlimited',style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 26,fontWeight: FontWeight.w500,color: Color(0xfffe9526) )
                  ),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
