import 'package:flutter/material.dart';

class FormController {

  String? selectedValue;

List<DropdownMenuItem<String>> listOptions= [
  const DropdownMenuItem(
    value: 'Opcion 1',
    child: Text('Opcion 1')),
  const DropdownMenuItem(
    value: 'Opcion 2',
    child: Text('Opcion 2')),
  const DropdownMenuItem(
    value: 'Opcion 3',
    child: Text('Opcion 3')),
  const DropdownMenuItem(
    value: 'Opcion 4',
    child: Text('Opcion 4')),
  const DropdownMenuItem(
    value: 'Opcion 5',
    child: Text('Opcion 5')),
];
}
