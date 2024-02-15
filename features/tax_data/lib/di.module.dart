//@GeneratedMicroModule;TaxDataPackageModule;package:tax_data/di.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:injectable/injectable.dart' as _i1;
import 'package:tax_data/data/data_source/tax_data_api.dart' as _i3;
import 'package:tax_data/data/repositories/repository/tax_data_repository_imp.dart'
    as _i5;
import 'package:tax_data/domain/repositories/tax_data_repository.dart' as _i4;
import 'package:tax_data/domain/usecases/tax_data_receive_usecase.dart' as _i7;
import 'package:tax_data/domain/usecases/tax_data_usecase.dart' as _i6;

class TaxDataPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.TaxDataApi>(() => _i3.TaxDataApi());
    gh.lazySingleton<_i4.TaxDataRepository>(
        () => _i5.TaxDataRepositoryImpl(gh<_i3.TaxDataApi>()));
    gh.factory<_i6.TaxDataUseCase>(
        () => _i6.TaxDataUseCase(gh<_i4.TaxDataRepository>()));
    gh.factory<_i7.TaxDataReceiveUseCase>(
        () => _i7.TaxDataReceiveUseCase(gh<_i4.TaxDataRepository>()));
  }
}
