import 'package:flutter/material.dart';
import 'package:project_zeta/core/constants/app_theme.dart';

class TextFieldValorant extends StatelessWidget {
  final Function(String)? onChanged;
  final String labelText;
  const TextFieldValorant({super.key, this.onChanged, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        focusColor: black,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: black),
          borderRadius: BorderRadius.circular(16.0),
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        iconColor: black,
        labelStyle: const TextStyle(color: black),
        labelText: labelText,
        prefixIcon: const Icon(Icons.search, color: black),
      ),
    );
  }
}
