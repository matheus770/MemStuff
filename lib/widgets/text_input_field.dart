import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final IconData icon;
  final String label;
  final String initialValue;
  final Function(String) onSaved;
  final Function(String) validator;

  const TextInputField({
    Key key,
    this.icon,
    this.label,
    this.initialValue,
    this.onSaved,
    this.validator
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        labelText: label,
      ),
    );
  }
}
