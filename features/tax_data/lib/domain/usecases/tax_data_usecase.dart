import 'package:core/di/di.dart';
import 'package:injectable/injectable.dart';
import 'package:core/resources/data_state.dart';
import 'package:tax_data/domain/entities/tax_data_response.dart';
import 'package:tax_data/domain/repositories/tax_data_repository.dart';

@Injectable()
class TaxDataUseCase implements BaseUseCase<DataState<TaxDataResponse>, void> {
  final TaxDataRepository taxDataRepository;

  TaxDataUseCase(this.taxDataRepository);

  @override
  Future<DataState<TaxDataResponse>> call({required void parameters}) {
    throw UnimplementedError();
  }
}
