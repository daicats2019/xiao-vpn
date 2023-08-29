

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/', initial: false),
        AutoRoute(page: MainRoute.page),
        CustomRoute(
          page: SubscriptionRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: LocationRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: StoreRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 300,
        ),
      ];
}
