// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';
import 'package:tax_data/data/data_source/tax_data_api.dart';
import 'package:tax_data/data/repositories/repository/tax_data_repository_imp.dart';
import 'package:tax_data/domain/usecases/tax_data_usecase.dart';
import 'package:tax_data/presentation/logics/cubits/tax_data_cubit.dart';
import 'package:tax_data/shared/countries_constants.dart';
import 'tax_screen.dart';

class TaxDataScreen extends StatefulWidget {
  const TaxDataScreen({super.key});

  @override
  State<TaxDataScreen> createState() => _TaxDataScreenState();
}

class _TaxDataScreenState extends State<TaxDataScreen> {
  final int _count = 1;
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
    const String assetName = 'assets/CryingGirl.svg';

    return BlocConsumer<TaxDataCubit, TaxDataState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    assetName,
                  ),
                  const SizedBox(height: 16),
                  const Text('Uh-Oh!'),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'WE NEED TAX DATA IN \nORDER FOR YOU TO ACCESS \n YOUR ACCOUNT',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 48),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return const CountrySelectionBottomSheet();
                            });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 15, 163, 153)),
                        visualDensity: const VisualDensity(vertical: 2),
                      ),
                      child: const Text(
                        "UPDATE YOUR TEXT DATA",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}



//nemampojma