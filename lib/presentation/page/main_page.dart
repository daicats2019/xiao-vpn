import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xiao_vpn/presentation/page/recent_location_page.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../utils/gen/assets.gen.dart';
import '../../utils/gen/colors.gen.dart';
import '../bloc/app_cubit.dart';
import '../bloc/app_state.dart';
import '../route/app_router.gr.dart';
import '../widget/widget.dart';
import 'home_left_menu_page.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppCubit>().startBilling();
    });

    Future.delayed(const Duration(seconds: 1), () {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: AppColors.background,
                actions: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Welcome to Xiao VPN',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 26,
                          color: AppColors.pri),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '1/ Device-specific information such as your OS version, hardware model, and IP address. This information helps us optimize our network connection to you and ensure quality of service.2/ Aggregated, anonymized activity data that we use to perform analytics on our service, share insights about usage, and ensure reliable access to certain websites or apps.3/ Total bandwidth consumed and time connected to our VPN service. This helps us monitor and improve the quality of our service.4/ Payment information and optional email when you purchase a paid plan. This information is collected solely for billing purposes and to provide customer support if necessary.We value your privacy and encourage you to review our full Privacy Policy for more information about the data we collect and how we process it.',
                    style: TextStyle(color: AppColors.text),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.pri,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 340,
                        child: const Center(
                            child: Text(
                          'Agree and continue',
                          style: TextStyle(color: AppColors.white),
                        )),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                      child: Text(
                    'Quit the app ',
                    style: TextStyle(color: AppColors.pri),
                  ))
                ],
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: AppColors.background,
      key: scaffoldKey,
      drawer: Drawer(
        child: HomeLeftMenuPage(),
      ),
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                          SizedBox(height: 100,),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          width: 260,
                          height: 63,
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AllLocationPage()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  Image.asset('assets/images/group_2.png'),
                                  const Text(
                                    'Seclect location',
                                    style: TextStyle(
                                        color: AppColors.text, fontSize: 16),
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: AppColors.text,
                                  )
                                ],
                              )),
                        ),
                      ),
                      SizedBox(height: 20,),
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
                                      Text(state.byteIn,
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
                                            textStyle: const TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.w400),
                                          )),
                                      Text(state.byteOut,
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
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
                                'assets/images/clip_path_group.png',
                                fit: BoxFit.cover,
                              )),
                          Column(
                            children: [


                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Center(
                                  child: InkWell(
                                    onTap: _handleConnectButtonPressed,
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
                                                state.duration,
                                                style: const TextStyle(
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
                              ),
                              const SizedBox(
                                height: 90,
                              ),
                              Container(
                                width: 400,
                                height: 80,
                                color: Colors.black38,
                                child: const Center(
                                    child: Text(
                                      'Admob',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )),
                              ),
                              const SizedBox(
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
                      const Spacer()
                    ],
                  ),
                ),
                //Toolbar
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    child: Container(
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        children: [
                          AppIconButtons(
                            onPressed: () {
                              scaffoldKey.currentState?.openDrawer();
                            },
                            icon: Image.asset('assets/images/fi_settings.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: SafeArea(
                    child: Container(
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        children: [
                          AppIconButtons(
                            onPressed: () {
                              AutoRouter.of(context).push(const SubscriptionRoute());
                            },
                            icon: Image.asset(
                              'assets/images/frame_3.png',

                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    context.read<AppCubit>().stopBilling();
    super.dispose();
  }

  // void _navigateToSelectLocation() {
  //   AutoRouter.of(context).push(const LocationRoute());
  // }

  void _handleConnectButtonPressed() {
    context.read<AppCubit>().toggle();
  }
}
