import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tax_data/domain/usecases/tax_data_usecase.dart';

part 'login_state.dart';

class TaxDataCubit extends Cubit<TaxDataState> {
  final TaxDataUseCase taxDataUseCase;
  TaxDataCubit(this.taxDataUseCase) : super(TaxDataState());

  Future<void> onSubmit() async {}
}
