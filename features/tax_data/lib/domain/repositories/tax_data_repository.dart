import 'package:core/di/di.dart';
import 'package:core/resources/data_state.dart';

abstract class TaxDataRepository extends BaseRepository {
  // Future<DataState<LoginResponse>> login({
  //   required String username,
  //   required String password,
  // });

  Future<void> fetchTaxData() async {}
}
