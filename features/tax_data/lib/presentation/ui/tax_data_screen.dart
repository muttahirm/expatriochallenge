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

class TaxDataScreen extends StatefulWidget {
  const TaxDataScreen({super.key});

  @override
  State<TaxDataScreen> createState() => _TaxDataScreenState();
}

class _TaxDataScreenState extends State<TaxDataScreen> {
  int _count = 1;
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
    String selectedValue = 'Option 1';
    String email = 'adad';
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
                              // return ListView.builder(
                              //     scrollDirection: Axis.vertical,
                              //     shrinkWrap: true,
                              //     itemCount: _count + 1,
                              //     itemBuilder: (context, index) {
                              //       if (index == 0) {
                              //         return Column(
                              //           mainAxisAlignment:
                              //               MainAxisAlignment.start,
                              //           crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //           children: <Widget>[
                              //             const SizedBox(height: 16),
                              //             const Align(
                              //                 alignment: Alignment.center,
                              //                 child:
                              //                     Text('Personal Information')),
                              //             const SizedBox(height: 24),
                              //             const Padding(
                              //               padding: EdgeInsets.symmetric(
                              //                   horizontal: 24.0,
                              //                   vertical: 8.0),
                              //               child: Align(
                              //                 alignment: Alignment.topLeft,
                              //                 child:
                              //                     Text('Financial Information'),
                              //               ),
                              //             ),
                              //             const SizedBox(height: 16),
                              //             const Padding(
                              //               padding: EdgeInsets.symmetric(
                              //                   horizontal: 24.0,
                              //                   vertical: 8.0),
                              //               child: Align(
                              //                 alignment: Alignment.topLeft,
                              //                 child: Text(
                              //                     'WHICH COUNTRY SERVES AS YOUR PRIMARY TAX RESIDNECE'),
                              //               ),
                              //             ),
                              //             // const TaxRow(),
                              //             MyDropdownFormField(
                              //               items: const [
                              //                 'Option 1',
                              //                 'Option 2',
                              //                 'Option 3',
                              //                 'Option 4',
                              //                 'Option 5',
                              //                 'Option 6',
                              //                 'Option 7',
                              //                 'Option 8',
                              //                 'Option 9',
                              //                 'Option 10',
                              //                 'Option 11',
                              //                 'Option 12'
                              //               ],
                              //               value: selectedValue,
                              //               onChanged: (newValue) {
                              //                 setState(() {
                              //                   selectedValue = newValue!;
                              //                 });
                              //               },
                              //             ),
                              //             const SizedBox(height: 8),
                              //             const Padding(
                              //               padding: EdgeInsets.symmetric(
                              //                   horizontal: 24.0,
                              //                   vertical: 8.0),
                              //               child: Align(
                              //                 alignment: Alignment.topLeft,
                              //                 child: Text(
                              //                     'TAX IDENTIFICATION NUMBER (IF NOT APPLICABLE INSERT: N/A)*'),
                              //               ),
                              //             ),
                              //             MyTextFormField(
                              //               labelText: '',
                              //               initialValue: email,
                              //               keyboardType:
                              //                   TextInputType.emailAddress,
                              //               onChanged: (value) {
                              //                 setState(() {
                              //                   email = value;
                              //                 });
                              //               },
                              //             ),
                              //           ],
                              //         );
                              //       } else if (index == _count) {
                              //         return Padding(
                              //           padding: const EdgeInsets.all(24.0),
                              //           child: Align(
                              //             alignment: Alignment.topLeft,
                              //             child: TextButton(
                              //                 onPressed: () {
                              //                   _addNewContactRow();
                              //                 },
                              //                 child: const Text('+ADD ANOTHER',
                              //                     style: TextStyle(
                              //                         color: Colors.black))),
                              //           ),
                              //         );
                              //       }
                              //       return const Text('xyz');
                              //     });
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

  void _addNewContactRow() {
    setState(() {
      _count = _count + 1;
      print('count = $_count');
    });
  }
}

class MyDropdownFormField extends StatefulWidget {
  final List<String> items;
  final String? value;
  final ValueChanged<String?>? onChanged;

  const MyDropdownFormField({
    Key? key,
    required this.items,
    this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  _MyDropdownFormFieldState createState() => _MyDropdownFormFieldState();
}

class _MyDropdownFormFieldState extends State<MyDropdownFormField> {
  late String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: DropdownButtonFormField<String>(
        value: _selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            _selectedValue = newValue;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(newValue);
          }
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}

class MyTextFormField extends StatefulWidget {
  final String labelText;
  final String? initialValue;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;

  const MyTextFormField({
    Key? key,
    required this.labelText,
    this.initialValue,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = widget.controller ?? TextEditingController();
    _textEditingController.text = widget.initialValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextFormField(
        controller: _textEditingController,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          border: const OutlineInputBorder(),
        ),
        validator: widget.validator,
        onChanged: widget.onChanged,
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}

//nemampojma

class CountrySelectionBottomSheet extends StatefulWidget {
  const CountrySelectionBottomSheet({super.key});

  @override
  _CountrySelectionBottomSheetState createState() =>
      _CountrySelectionBottomSheetState();
}

class _CountrySelectionBottomSheetState
    extends State<CountrySelectionBottomSheet> {
  List<String> selectedCountries = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Select Countries and Tax ID',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: selectedCountries.length + 1,
              itemBuilder: (context, index) {
                if (index == selectedCountries.length) {
                  return ElevatedButton(
                    onPressed: () {
                      // _showCountrySelectionDialog(context);
                      setState(() {
                        selectedCountries.add('xyz');
                      });
                    },
                    child: const Text('Add Another Country'),
                  );
                } else {
                  // return ListTile(
                  //   title: Text(selectedCountries[index]),
                  //   trailing: IconButton(
                  //     icon: const Icon(Icons.remove_circle),
                  //     onPressed: () {
                  //       setState(() {
                  //         selectedCountries.removeAt(index);
                  //       });
                  //     },
                  //   ),
                  // );
                  return const Text('xyz');
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showCountrySelectionDialog(BuildContext context) {
    List<String> countryList = [];
    for (var country in CountriesConstants.nationality) {
      countryList.add(country['label'] as String);
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a Country'),
          content: SingleChildScrollView(
            child: Column(
              children: countryList
                  .where((country) => !selectedCountries.contains(country))
                  .map((country) {
                return ListTile(
                  title: Text(country),
                  onTap: () {
                    setState(() {
                      selectedCountries.add(country);
                    });
                    Navigator.pop(context);
                    // Refresh bottom sheet after adding a new country
                    // WidgetsBinding.instance.addPostFrameCallback((_) {
                    //   showModalBottomSheet(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return const CountrySelectionBottomSheet();
                    //     },
                    //   );
                    // });
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
