import 'package:flutter/material.dart';
import 'package:tax_data/presentation/ui/tax_screen.dart';

class RecurringTaxDetails extends StatefulWidget {
  final String selectedValue;
  final String taxNumber;
  final VoidCallback removeEntry;
  const RecurringTaxDetails({
    Key? key,
    required this.selectedValue,
    required this.taxNumber,
    required this.removeEntry,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecurringTaxDetailsTaxDetails();
}

class _RecurringTaxDetailsTaxDetails extends State<RecurringTaxDetails> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = '';
    String taxNumber = '';
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 32),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('DO YOU HAEV OTHER TAX RESIDENCES?*'),
          ),
        ),
        MyDropdownFormField(
          items: const [
            'Option 1',
            'Option 2',
            'Option 3',
            'Option 4',
          ],
          value: widget.selectedValue,
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('TAX IDENTIFICATION NUMBER'),
          ),
        ),
        MyTextFormField(
          labelText: '',
          initialValue: widget.taxNumber,
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {
            setState(() {
              taxNumber = value;
            });
          },
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
              onPressed: () {
                widget.removeEntry();
              },
              child: const Text(
                'Remove',
                style: TextStyle(color: Colors.black),
              )),
        )
      ],
    );
  }
}
