import 'package:flutter/material.dart';
import 'package:flutter_app/components/text_field.dart';

import 'package:flutter_app/controller/menu_controller.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/controller/btn_add.dart';



class CustomStepper extends StatefulWidget {
  const CustomStepper(
      {super.key, required this.providerNoListen, required this.parentContext});
  final MainMenuController providerNoListen;
  final BuildContext parentContext;

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int _currentStep = 0;
  TextEditingController textEditingController = TextEditingController();

  Color pickerColor = const Color.fromARGB(255, 251, 255, 4);
  Color currentColor = const Color.fromARGB(255, 0, 0, 0);
  void changeColor(Color color) {
    setState(() {
      pickerColor = color;
      currentColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
          accentColor: Colors.green,
          primarySwatch: Colors.green,
          colorScheme: const ColorScheme.dark(
            primary: Colors.green,
          ),

          /*  canvasColor: Colors.yellow,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Colors.green,
                background: Colors.red,
                secondary: Colors.green,)*/
        ),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep < 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep > 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
          steps: [
            Step(
              isActive: _currentStep == 0,
              title: const Text('Aşama 1'),
              content: Column(
                children: [
                  TxtFld(
                    hintText: "Buton Adı",
                    prefixIcon: Icons.edit,
                    myController: TextEditingController(
                        text: Provider.of<MainMenuController>(
                                widget.parentContext)
                            .globalModel
                            .text),
                    onChanged: (p0) {
                      widget.providerNoListen.setGlobalText(p0);
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            Step(
              isActive: _currentStep == 1,
              title: const Text('Aşama 2'),
              content: Column(
                children: [
                  Text(
                    widget.providerNoListen.globalModel.text,
                    style: const TextStyle(color: Colors.green),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: const Text('Buton Ekle'),
                    onPressed: () {
                      setState(() {
                        String text = widget.providerNoListen.globalModel.text;
                        widget.providerNoListen.setButton(AddButton(
                          text: text,
                          isSelected: true,
                          onPressed: () => "hello",
                          onTextChanged: (value) => "",
                        ));
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Step(
              isActive: _currentStep == 2,
              title: const Text('Aşama 3'),
              content: Column(
                children: [
                  Text(
                    widget.providerNoListen.globalModel.text,
                  ),

                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Renk Seçin!'),
                            content: SingleChildScrollView(
                              child: ColorPicker(
                                pickerColor: pickerColor,
                                onColorChanged: changeColor,
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Renk Seç'),
                                onPressed: () {
                                  setState(() {
                                    currentColor = pickerColor;
                                  });
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('Renk Seç'),
                  ),

                  // Diğer bileşenler buraya eklenecek yer
                ],
              ),
            ),
          ],
        ));
  }
}