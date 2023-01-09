import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:form_into_widget/controller/second_controller_test.dart';
import 'package:form_into_widget/screen/form_example_screen.dart';
import 'package:form_into_widget/screen/other_screen.dart';

class VoucherScreen extends StatefulWidget {
  static String name = '/voucher';
  const VoucherScreen({super.key});

  @override
  State<VoucherScreen> createState() => _VoucherScreenState();
}

class _VoucherScreenState extends State<VoucherScreen> {
  final SecondControllerTest _con = SecondControllerTest();
  final OtherScreen _secondScreen = const OtherScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voucher Scree'),
      ),
    body: FormWidget(_con, _secondScreen),
    );
  }
}
