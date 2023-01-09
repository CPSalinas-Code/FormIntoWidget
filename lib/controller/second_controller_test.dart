import 'package:flutter/material.dart';
import 'package:form_into_widget/controller/form_controller.dart';

class SecondControllerTest extends FormController{

  String? selectedValue;

List<DropdownMenuItem<String>> listOptions= [
  const DropdownMenuItem(
    value: 'Christian Salinas',
    child: Text('Christian Salinas')),
  const DropdownMenuItem(
    value: 'Paul Buestan',
    child: Text('Paul Buestan')),
  
];
}
