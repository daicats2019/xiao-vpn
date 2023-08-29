// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:xiao_vpn/presentation/page/location_detail_page.dart' as _i2;
import 'package:xiao_vpn/presentation/page/location_page.dart' as _i3;
import 'package:xiao_vpn/presentation/page/main_page.dart' as _i4;
import 'package:xiao_vpn/presentation/page/map_page.dart' as _i5;
import 'package:xiao_vpn/presentation/page/recent_location_page.dart' as _i1;
import 'package:xiao_vpn/presentation/page/splash_page.dart' as _i6;
import 'package:xiao_vpn/presentation/page/store_page.dart' as _i7;
import 'package:xiao_vpn/presentation/page/subscription_page.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AllLocationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllLocationPage(),
      );
    },
    LocationDetailRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LocationDetailPage(),
      );
    },
    LocationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LocationPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainPage(),
      );
    },
    MapRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MapPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashPage(),
      );
    },
    StoreRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.StorePage(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SubscriptionPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AllLocationPage]
class AllLocationRoute extends _i9.PageRouteInfo<void> {
  const AllLocationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AllLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllLocationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LocationDetailPage]
class LocationDetailRoute extends _i9.PageRouteInfo<void> {
  const LocationDetailRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LocationDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationDetailRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LocationPage]
class LocationRoute extends _i9.PageRouteInfo<void> {
  const LocationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MapPage]
class MapRoute extends _i9.PageRouteInfo<void> {
  const MapRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.StorePage]
class StoreRoute extends _i9.PageRouteInfo<void> {
  const StoreRoute({List<_i9.PageRouteInfo>? children})
      : super(
          StoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'StoreRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SubscriptionPage]
class SubscriptionRoute extends _i9.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
