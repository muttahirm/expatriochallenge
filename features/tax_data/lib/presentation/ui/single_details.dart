import 'package:flutter/material.dart';
import 'package:tax_data/presentation/ui/tax_screen.dart';

class SingleTaxDetails extends StatefulWidget {
  final String selectedValue;
  final String taxNumber;
  const SingleTaxDetails({
    Key? key,
    required this.selectedValue,
    required this.taxNumber,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SingleTaxDetails();
}

class _SingleTaxDetails extends State<SingleTaxDetails> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = '';
    String taxNumber = '';
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('Financial Information'),
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text('WHICH COUNTRY SERVES AS YOUR PRIMARY TAX RESIDNECE'),
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
            child: Text(
                'TAX IDENTIFICATION NUMBER (IF NOT APPLICABLE INSERT: N/A)*'),
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
      ],
    );
  }
}
