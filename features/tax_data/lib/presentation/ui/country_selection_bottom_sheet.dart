import 'package:flutter/material.dart';
import 'package:tax_data/presentation/ui/tax_screen.dart';

class CountrySelectionBottomSheet extends StatefulWidget {
  const CountrySelectionBottomSheet({super.key});

  @override
  _CountrySelectionBottomSheetState createState() =>
      _CountrySelectionBottomSheetState();
}

class _CountrySelectionBottomSheetState
    extends State<CountrySelectionBottomSheet> {
  List<Map<String, dynamic>> selectedCountriesAndTaxNumbers = [
    {'country': 'Andora', 'taxnumber': '12345'}
  ];
  List<String> selectedCountries = [''];
  String selectedValue = 'Option 1';
  String email = 'afa';

  void removeEntry(int index) {
    setState(() {
      selectedCountries.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Personal Information',
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
                  return Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {
                        // _showCountrySelectionDialog(context);
                        setState(() {
                          selectedCountries.add('xyz');
                        });
                      },
                      child: const Text(
                        '+Add Another',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                } else if (index == 0) {
                  return const SingleTaxDetails(
                    selectedValue: 'Option 1',
                    taxNumber: '',
                  );
                } else {
                  return RecurringTaxDetails(
                    selectedValue: 'Option 1',
                    taxNumber: '',
                    removeEntry: () => removeEntry(index),
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 16.0),
          const ConfirmationCheckBox(),
          const SizedBox(height: 16.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                // BlocProvider.of<LoginCubit>(context).onSubmit(
                //     'tito+bs792@expatrio.com', passwordController.text);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 15, 163, 153)),
                visualDensity: const VisualDensity(vertical: 2),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
