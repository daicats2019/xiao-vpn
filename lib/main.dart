

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:xiao_vpn/purchase_page/purchase_v2_page.dart';
import 'package:xiao_vpn/utils/locator/locator.dart';

import 'Page/confrim_page.dart';
import 'Page/history.dart';
import 'Page/intro_page.dart';
import 'Page/purchase.dart';
import 'Page/seclect_location.dart';
import 'Route/route_name.dart';
import 'model/product.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(ProductAdapter());

  await Hive.openBox<Product>('product');

  await setupGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroPage(),
      onGenerateRoute: (setting) {
        switch (setting.name){
          case RouteNamePage.inTroPAge:
            {
              return MaterialPageRoute(builder: (context) => IntroPage());
            }
          case RouteNamePage.confirmPage:
            {
              return MaterialPageRoute(builder: (context) => ConfirmPage());
            }
          case RouteNamePage.seclectLocation:
            {
              return MaterialPageRoute(builder: (context) => SeclectLocation());
            }
          case RouteNamePage.history:
            {
              return MaterialPageRoute(builder: (context) => HistoryPage());
            }
          case RouteNamePage.purchasePage:
            {
              return MaterialPageRoute(builder: (context) => PurchasePage());
            }
          case RouteNamePage.purchasePageV2:
            {
              return MaterialPageRoute(builder: (context) => PurchaseV2Page());
            }
        }
      },
    );
  }
}

