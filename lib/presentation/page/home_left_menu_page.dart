import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/config.dart';
import '../../utils/gen/assets.gen.dart';
import '../route/app_router.gr.dart';
import '../widget/widget.dart';

enum HomeMenu {
  history,
  share,
  rate,
  contactUs,
  termOfUse,
  privacyPolicy;
}

const _homeMenus = HomeMenu.values;

class HomeLeftMenuPage extends StatelessWidget {
  const HomeLeftMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                GestureDetector(
                  child: Image.asset('assets/images/illustrations.png'),
                  onLongPress: () {
                    AutoRouter.of(context).push(const StoreRoute());
                  },
                ),
                const SizedBox(height: 10),
                const AppLargeText(text: 'Settings', size: 30),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, builder) {
                return const SizedBox(height: 10);
              },
              physics: const ClampingScrollPhysics(),
              itemCount: _homeMenus.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _navigate(context, _homeMenus[index]);
                  },
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
                        Row(
                          children: [
                            Expanded(
                              child: _homeMenus[index].icon,
                            ),
                            Expanded(
                                flex: 3,
                                child: Text(
                                  _homeMenus[index].name,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )),
                            Expanded(
                                child: Assets.icons.icChevronRight.svg()),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(08.0),
            child: InkWell(
              onTap: () {
                AutoRouter.of(context).push(const SubscriptionRoute());
              },
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
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                  width: 127,
                                  height: 44,
                                  child: const Text(
                                    'Go to Premium package',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
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
                            child: const Text(
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
            ),
          )
        ],
      ),
    );
  }

  void _navigate(BuildContext context, HomeMenu menu) {
    switch (menu) {
      case HomeMenu.history:
        AutoRouter.of(context).push(const LocationRoute());
        break;

      case HomeMenu.share:
        if (Platform.isAndroid) {
          Share.share(
            'Check out this app: '
            '${Config.storeAppUrl}',
          );
        } else {

        }

        break;
      case HomeMenu.rate:
        _launchURL(Config.storeAppUrl);
        break;
      case HomeMenu.contactUs:
        break;
      case HomeMenu.termOfUse:
        _launchURL(Config.termOfUseUrl);
        break;
      case HomeMenu.privacyPolicy:
        _launchURL(Config.privacyPolicyUrl);
        break;
    }
  }

  Future<void> _launchURL(String link) async {
    final url = Uri.parse(link);
    await launchUrl(url);
  }
}

extension HomeMenuExt on HomeMenu {
  String get name {
    switch (this) {
      case HomeMenu.history:
        return 'History';
      case HomeMenu.share:
        return 'Share';
      case HomeMenu.rate:
        return 'Rate';
      case HomeMenu.contactUs:
        return 'Contact Us';
      case HomeMenu.termOfUse:
        return 'Term of use';
      case HomeMenu.privacyPolicy:
        return 'Privacy Policy';
    }
  }

  Widget get icon {
    switch (this) {
      case HomeMenu.history:
        return Assets.icons.icStar.svg();
      case HomeMenu.share:
        return Assets.icons.icShare.svg();
      case HomeMenu.rate:
        return Assets.icons.isRate.svg();
      case HomeMenu.contactUs:
        return Assets.icons.isContactus.svg();
      case HomeMenu.termOfUse:
        return Assets.icons.icDocument.svg();
      case HomeMenu.privacyPolicy:
        return Assets.icons.icLock.svg();
    }
  }
}
