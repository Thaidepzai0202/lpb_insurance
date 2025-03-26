// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:lpb_insurance/data/data_source/local/local_storage.dart'
    as _i243;
import 'package:lpb_insurance/data/data_source/local/pref/shared_preferences_manager.dart'
    as _i884;
import 'package:lpb_insurance/data/data_source/services/api_service.dart'
    as _i669;
import 'package:lpb_insurance/data/repositories/login_repo_impl.dart' as _i760;
import 'package:lpb_insurance/data/repositories/sign_up_impl.dart' as _i546;
import 'package:lpb_insurance/di/environment/build_config.dart' as _i138;
import 'package:lpb_insurance/di/environment/build_config_prod.dart' as _i212;
import 'package:lpb_insurance/di/environment/build_config_uat.dart' as _i951;
import 'package:lpb_insurance/di/module/conponents_module.dart' as _i95;
import 'package:lpb_insurance/di/module/network_module.dart' as _i934;
import 'package:lpb_insurance/domain/repositories/login_repository.dart' as _i6;
import 'package:lpb_insurance/domain/repositories/sign_up_repository.dart'
    as _i783;
import 'package:lpb_insurance/domain/use_cases/login_usecase.dart' as _i974;
import 'package:lpb_insurance/domain/use_cases/sign_up_usecase.dart' as _i596;
import 'package:lpb_insurance/presentation/common/toast/toast_widget.dart'
    as _i803;
import 'package:lpb_insurance/presentation/screens/login/cubit/login_cubit.dart'
    as _i304;
import 'package:lpb_insurance/presentation/screens/sign_up/confirm_otp_sign_up/cubit/confirm_otp_sign_up_cubit.dart'
    as _i934;
import 'package:lpb_insurance/presentation/screens/sign_up/sign_up_new_account/cubit/sign_up_cubit.dart'
    as _i476;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

const String _uat = 'uat';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    final componentModule = _$ComponentModule();
    gh.factory<_i361.Dio>(() => networkModule.dio);
    gh.factory<_i669.ApiService>(() => networkModule.adminService);
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => componentModule.prefs,
      preResolve: true,
    );
    gh.factory<_i558.FlutterSecureStorage>(() => componentModule.secureStorage);
    gh.lazySingleton<_i803.ToastWidget>(() => _i803.ToastWidget());
    gh.singleton<_i884.SharedPreferencesManager>(() =>
        _i884.SharedPreferencesManager(pref: gh<_i460.SharedPreferences>()));
    gh.factory<_i138.BuildConfig>(
      () => _i951.BuildConfigBeta(),
      registerFor: {_uat},
    );
    gh.factory<_i243.LocalStorage>(() => _i243.LocalStorage(
          preferences: gh<_i884.SharedPreferencesManager>(),
          secureStorage: gh<_i558.FlutterSecureStorage>(),
        ));
    gh.factory<_i138.BuildConfig>(
      () => _i212.BuildConfigProd(),
      registerFor: {_prod},
    );
    gh.factory<_i6.LoginRepository>(() => _i760.LoginRepositoryImpl(
          apiService: gh<_i669.ApiService>(),
          localStorage: gh<_i243.LocalStorage>(),
        ));
    gh.factory<_i783.SignUpRepository>(() => _i546.SignUpRepositoryImpl(
          apiService: gh<_i669.ApiService>(),
          localStorage: gh<_i243.LocalStorage>(),
        ));
    gh.factory<_i596.SignUpUseCase>(() =>
        _i596.SignUpUseCase(signUpRepository: gh<_i783.SignUpRepository>()));
    gh.factory<_i974.LoginUseCase>(
        () => _i974.LoginUseCase(loginRepository: gh<_i6.LoginRepository>()));
    gh.factory<_i476.SignUpCubit>(
        () => _i476.SignUpCubit(signUpUseCase: gh<_i596.SignUpUseCase>()));
    gh.factory<_i934.ConfirmOtpSignUpCubit>(() =>
        _i934.ConfirmOtpSignUpCubit(signUpUseCase: gh<_i596.SignUpUseCase>()));
    gh.factory<_i304.LoginCubit>(
        () => _i304.LoginCubit(loginUseCase: gh<_i974.LoginUseCase>()));
    return this;
  }
}

class _$NetworkModule extends _i934.NetworkModule {}

class _$ComponentModule extends _i95.ComponentModule {}
