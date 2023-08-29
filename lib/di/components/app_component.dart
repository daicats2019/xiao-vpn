import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:xiao_vpn/di/components/app_component.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
