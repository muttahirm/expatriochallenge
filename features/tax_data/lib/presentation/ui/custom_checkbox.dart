import 'package:flutter/material.dart';

class ConfirmationCheckBox extends StatefulWidget {
  const ConfirmationCheckBox({super.key});

  @override
  State<StatefulWidget> createState() => _ConfirmationCheckBoxState();
}

class _ConfirmationCheckBoxState extends State<ConfirmationCheckBox> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return CheckboxListTile(
      title: const Text("Check to confirm"),
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
    );
  }
}
