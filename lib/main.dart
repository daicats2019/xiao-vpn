import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xiao_vpn/presentation/bloc/app_cubit.dart';
import 'package:xiao_vpn/presentation/root.dart';

import '/di/components/app_component.dart' as di;
import 'core/cubit/cubit_observer.dart';
import 'data/local/app_db.dart';
import 'di/components/app_component.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MainCubitObserver();

  //Di
  await di.configureDependencies();

  //Hive
  await AppDatabase().initialize();

  runApp(
    MultiBlocProvider(
      providers: [BlocProvider<AppCubit>(create: (_) => getIt())],
      child: RootPage(),
    ),
  );
}
