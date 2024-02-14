//@GeneratedMicroModule;LoginPackageModule;package:login/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:injectable/injectable.dart' as _i1;
import 'package:login/data/data_source/login_api.dart' as _i3;
import 'package:login/data/repositories/repository/login_repository_imp.dart'
    as _i5;
import 'package:login/domain/repositories/login_repository.dart' as _i4;
import 'package:login/domain/usecases/user_login_usecase.dart' as _i6;

class LoginPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.LoginApi>(() => _i3.LoginApi());
    gh.lazySingleton<_i4.LoginRepository>(
        () => _i5.LoginRepositoryImpl(gh<_i3.LoginApi>()));
    gh.factory<_i6.LoginUseCase>(
        () => _i6.LoginUseCase(gh<_i4.LoginRepository>()));
  }
}
