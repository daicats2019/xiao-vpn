import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        leading: Icon(Icons.turn_left,),
        title: Center(child: Text('History')),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.refresh),
          )
        ],
      ),
      body: Column(
        children: [

          //
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 410,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),

                color: Colors.white,
              ),
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/germany.png'),
                        SizedBox(width: 20,),
                        Text('Germany',style: TextStyle(fontSize: 16,color: Colors.grey),),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/fi_bar-chart-2-blue.png'),
                        ),

                        Text('32ms',style: TextStyle(color: Color(0xff3CABDB),fontSize: 16,fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 410,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),

                color: Colors.white,
              ),
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/singapore.png'),
                        SizedBox(width: 20,),
                        Text('Singapore',style: TextStyle(fontSize: 16,color: Colors.grey),),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/fi_bar-chart-2-blue.png'),
                        ),

                        Text('32ms',style: TextStyle(color: Color(0xff3CABDB),fontSize: 16,fontWeight: FontWeight.w400),)
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 410,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),

                color: Colors.white,
              ),
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/united kingdom.png'),
                        SizedBox(width: 20,),
                        Text('united kingdom',style: TextStyle(fontSize: 16,color: Colors.grey),),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/fi_bar-chart-2.png'),
                        ),

                        Text('32ms',style: TextStyle(color: Color(0xff53D86A),fontSize: 16,fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 410,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),

                color: Colors.white,
              ),
              child:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/france.png'),
                        SizedBox(width: 20,),
                        Text('france',style: TextStyle(fontSize: 16,color: Colors.grey),),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/fi_bar-chart-2-red.png'),
                        ),

                        Text('32ms',style: TextStyle(color: Color(0xffFD3D39),fontSize: 16,fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
