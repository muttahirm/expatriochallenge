import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:tax_data/presentation/logics/cubits/login_cubit.dart';

class TaxDataScreen extends StatefulWidget {
  const TaxDataScreen({super.key});

  @override
  State<TaxDataScreen> createState() => _TaxDataScreenState();
}

class _TaxDataScreenState extends State<TaxDataScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaxDataCubit, TaxDataState>(
      listener: (context, state) {},
      builder: (context, state) {
        return const Scaffold(
          body: Padding(
            padding: EdgeInsets.all(8.0),
          ),
        );
      },
    );
  }
}
