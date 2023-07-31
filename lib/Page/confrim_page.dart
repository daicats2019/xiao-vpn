import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Route/route_name.dart';
import '../data/data_item.dart';
import '../utils/colors.dart';
import 'DrawerSidebar/drawer_header.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  final durationOne = Duration(minutes: 900, seconds: 3);
  final durationTwo = Duration(seconds: 19999);
  final durationThree = Duration(days: 2, seconds: 1234);

  final List<ItemDashboard> _listItem = [
    ItemDashboard(1, 'History', 'assets/images/Group 3.png'),
    ItemDashboard(2, 'Share app', 'assets/images/Group 4.png'),
    ItemDashboard(3, 'Rate us', 'assets/images/Group 5.png'),
    ItemDashboard(4, 'Contacts us', 'assets/images/Group 6.png'),
    ItemDashboard(6, 'Terms of service', 'assets/images/Group 7.png'),
    ItemDashboard(7, 'Privacy Policy', 'assets/images/Group 8.png'),
  ];

  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: AppColor.background,
                actions: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Welcome to Xiao VPN',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 26,
                          color: AppColor.pri),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '1/ Device-specific information such as your OS version, hardware model, and IP address. This information helps us optimize our network connection to you and ensure quality of service. 2/ Aggregated, anonymized activity data that we use to perform analytics on our service, share insights about usage, and ensure reliable access to certain websites or apps. 3/ Total bandwidth consumed and time connected to our VPN service. This helps us monitor and improve the quality of our service. 4/ Payment information and optional email when you purchase a paid plan. This information is collected solely for billing purposes and to provide customer support if necessary. We value your privacy and encourage you to review our full Privacy Policy for more information about the data we collect and how we process it.',
                    style: TextStyle(color: AppColor.text),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.pri,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 340,
                        child: Center(
                            child: Text(
                          'Agree and continue',
                          style: TextStyle(color: AppColor.white),
                        )),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    'Quit the app ',
                    style: TextStyle(color: AppColor.pri),
                  ))
                ],
              ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              DrawerHeaderPage(),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => ItemDashBoard(
                        context,_listItem[index]
                    ),
                    separatorBuilder:(context, index) => SizedBox(height: 10,),
                    itemCount: _listItem.length),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 253,
                  height: 90,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffF28367),
                        Color(0xffFF5282),
                      ]),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all( 10),
                            child: Row(
                              children: [
                                Container(
                                    width: 127,
                                    height: 44,
                                    child: Text(
                                      'Go to Premium package',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )),
                                SizedBox(width: 10,),
                                Image.asset(
                                  'assets/images/Frame.png',
                                  width: 52,
                                  height: 48,
                                  fit: BoxFit.contain,
                                )
                              ],
                            ),
                          ),
                          Container(
                              width: 191,
                              height: 22,
                              child: Text(
                                'Super fast speed, safe and stable',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColor.background,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset('assets/images/fi_settings.png'),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNamePage.purchasePage);
              },
              child: Image.asset(
                'assets/images/Frame 3.png',
                width: 110,
                height: 50,
                fit: BoxFit.cover,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              width: 260,
              height: 63,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNamePage.seclectLocation);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/Group 2.png'),
                      Text(
                        'Seclect location',
                        style: TextStyle(color: AppColor.grey, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: AppColor.grey,
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 180,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/fi_download.png'),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dowload',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              )),
                          Text('--mbps',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 180,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/fi_rss.png'),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ping',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              )),
                          Text('--ms',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(
                  height: 500,
                  width: 500,
                  child: Image.asset(
                    'assets/images/Clip path group.png',
                    fit: BoxFit.cover,
                  )),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        child: CircularPercentIndicator(
                          radius: 100.0,
                          animation: true,
                          animationDuration: 1200,
                          lineWidth: 15.0,
                          percent: 0.0,
                          center: Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/fi_power.png',
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "00:00:00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.butt,
                          backgroundColor: Colors.grey.shade200,
                          progressColor: Color(0xff595BD4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                    width: 400,
                    height: 80,
                    color: Colors.black38,
                    child: Center(
                        child: Text(
                      'Admob',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 355,
                    height: 44,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'By using the app, you agree to our ',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms of service',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff167FFC),
                              )),
                          TextSpan(
                              text: ' &',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff167FFC))),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget ItemDashBoard(BuildContext context, ItemDashboard item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 1,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ],
            borderRadius: BorderRadius.circular(50)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      item.imageData,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Text(
                        '${item.title}',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
