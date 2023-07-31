import 'package:get_it/get_it.dart';

import '../app_database.dart';

GetIt locator = GetIt.instance;

setupGetIt() async {
  locator.registerSingletonAsync<AppDatabase>(() => AppDatabase.instance());
  await locator.isReady<AppDatabase>();
}
