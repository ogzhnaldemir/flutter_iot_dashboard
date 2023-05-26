import 'package:flutter/material.dart';
import 'package:flutter_app/controller/btn_add.dart';
import 'package:flutter_app/model/button_add_model.dart';

class MainMenuController extends ChangeNotifier {
  ButtonAddModel globalModel = ButtonAddModel();
  List<AddButton> btnList = [];
  final myController = TextEditingController();

  void setGlobalText(String text) {
    globalModel.text = text;
    notifyListeners();
  }

  void setButton(AddButton widget) {
    btnList.add(widget);
    notifyListeners();
  }

  void removeButton(AddButton widget) {
    btnList.remove(widget);
    notifyListeners();
  }
}
