// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;
import 'package:xiao_vpn/data/local/app_db.dart' as _i3;
import 'package:xiao_vpn/data/remote/vpn_remote.dart' as _i6;
import 'package:xiao_vpn/data/repository/vpn_repository_impl.dart' as _i8;
import 'package:xiao_vpn/data/sharedpref/shared_prefs.dart' as _i5;
import 'package:xiao_vpn/di/module/local_module.dart' as _i10;
import 'package:xiao_vpn/domain/repository/vpn_repository.dart' as _i7;
import 'package:xiao_vpn/presentation/bloc/app_cubit.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final localModule = _$LocalModule();
    gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => localModule.provideSharedPreferences(),
      preResolve: true,
    );
    gh.factory<_i5.SharedPrefs>(
        () => _i5.SharedPrefs(gh<_i4.SharedPreferences>()));
    gh.factory<_i6.VpnRemote>(() => _i6.VpnRemote());
    gh.factory<_i7.VpnRepository>(() => _i8.VpnRepositoryImpl(
          gh<_i6.VpnRemote>(),
          gh<_i3.AppDatabase>(),
        ));
    gh.factory<_i9.AppCubit>(() => _i9.AppCubit(
          gh<_i7.VpnRepository>(),
          gh<_i5.SharedPrefs>(),
        ));
    return this;
  }
}

class _$LocalModule extends _i10.LocalModule {}
