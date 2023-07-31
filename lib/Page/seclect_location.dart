import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/route_name.dart';
import '../utils/colors.dart';

class SeclectLocation extends StatefulWidget {
  const SeclectLocation({Key? key}) : super(key: key);

  @override
  State<SeclectLocation> createState() => _SeclectLocationState();
}

class _SeclectLocationState extends State<SeclectLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        leading: Icon(Icons.turn_left,),
        title: Center(child: Text('Select location')),
        actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.refresh),
            )
        ],
      ),
      body: Column(
        children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),

                  color: Colors.white,
                ),
                child: TextField(

                  decoration: InputDecoration(

                    prefixIcon: Icon(Icons.search,size: 30,color: Colors.grey,),
                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(50)
                    ),
                    hintText: 'Search location',
                    hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
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
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: ElevatedButton(

                  onPressed: () {
                    Navigator.pushNamed(context, RouteNamePage.history);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time_outlined),
                          SizedBox(width: 20,),
                          Text('History',style: TextStyle(fontSize: 16,color: Colors.grey),),
                        ],
                      ),
                      Icon(Icons.arrow_right_alt_rounded,color: Colors.grey,size: 50,),
                    ],
                  ),
                ),
              ),
            ),
          ),
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
                    Image.asset('assets/images/Frame.png'),

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
