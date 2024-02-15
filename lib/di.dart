import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:core/core.dart';
import 'package:core/di.module.dart';
import 'package:login/di.module.dart';
import 'package:tax_data/di.module.dart';

import 'di.config.dart';

final GetIt diContainer = GetIt.instance;

@InjectableInit(externalPackageModulesBefore: [
  ExternalModule(CorePackageModule),
], externalPackageModulesAfter: [
  ExternalModule(LoginPackageModule),
  ExternalModule(TaxDataPackageModule)
])
Future<void> configureDependencies() async {
  di = diContainer;
  await di.init();
}
