import 'package:flutter/material.dart';
import 'package:form_into_widget/controller/form_controller.dart';
import 'package:form_into_widget/screen/voucher_screen.dart';

class FormExampleScreen extends StatefulWidget {
  const FormExampleScreen({super.key});

  @override
  State<FormExampleScreen> createState() => _FormExampleScreenState();
}

class _FormExampleScreenState extends State<FormExampleScreen> {
  final FormController _con = FormController();
  final VoucherScreen _voucherScreen = VoucherScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form into Widget'),
      ),
      body: Center(
        child: FormWidget(
          controlador: _con,
          pageRoute: _voucherScreen,
        ),
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  final FormController controlador;
  final Widget pageRoute;
  const FormWidget({
    Key? key,
    required this.controlador,
    required this.pageRoute,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  /* final FormController _controlador;
  final VoucherScreen _voucherScreen; */
  bool isButtonActive = true;
  late TextEditingController controllerField1;
  late TextEditingController controllerField2;
  late TextEditingController controllerField3;

  _FormWidgetState();

  //String? dropdownSelected;

  @override
  void dispose() {
    controllerField1.dispose();
    controllerField2.dispose();
    controllerField3.dispose();
    super.dispose();
  }

  @override
  void initState() {
    controllerField1 = TextEditingController();
    controllerField1.addListener(() {
      final actualStateButton = controllerField1.text.isNotEmpty;
      setState(() {
        isButtonActive = actualStateButton;
      });
    });

    controllerField2 = TextEditingController();
    controllerField2.addListener(() {
      final actualStateButton = controllerField2.text.isNotEmpty;
      setState(() {
        isButtonActive = actualStateButton;
      });
    });
    controllerField3 = TextEditingController();
    controllerField3.addListener(() {
      final actualStateButton = controllerField3.text.isNotEmpty;
      setState(() {
        isButtonActive = actualStateButton;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Material(
            elevation: 20,
            borderRadius: BorderRadius.circular(50),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0XFF053467),
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
              ),
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                      controller: controllerField1,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        label: Text(
                          'Field 1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    TextField(
                      controller: controllerField2,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        label: Text(
                          'Field 2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    TextField(
                      controller: controllerField3,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        label: Text(
                          'Field 3',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    DropdownButtonFormField(
                        dropdownColor: Colors.blue,
                        style: const TextStyle(color: Colors.white),
                        value: widget.controlador.selectedValue,
                        decoration: const InputDecoration(
                            label: Text('seleccione opcion')),
                        items: widget.controlador.listOptions,
                        onChanged: (String? string) {
                          setState(() {
                            widget.controlador.selectedValue = string;
                          });
                        }),
                    ElevatedButton(
                      onPressed: formValidation()
                          ? () {
                              print('^^^^^^^^^^Envio de datos^^^^^^');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => widget.pageRoute),
                              );
                            }
                          : null,
                      child: const Text('Continuar'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool formValidation() {
    bool flag = false;
    if (controllerField1.text.isNotEmpty &&
        controllerField2.text.isNotEmpty &&
        controllerField3.text.isNotEmpty &&
        widget.controlador.selectedValue != null) {
      flag = true;
      print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
      print(widget.controlador.selectedValue);
      print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
    }
    return flag;
  }
}
