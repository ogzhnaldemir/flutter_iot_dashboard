import 'package:flutter/material.dart';
import 'package:flutter_app/components/button.dart';
import 'package:provider/provider.dart';

class PasswordRes extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromRGBO(37, 70, 110, 0.253),
    body: SingleChildScrollView(
      child: Container(
        width: double.infinity, // Take up all available width
        padding: const EdgeInsets.symmetric(vertical: 100), // Adjust vertical spacing as needed
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              border: Border.all(
                color: Colors.black,
                width: 0.5,
              ),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          padding: const EdgeInsets.all(32.0),
          width: 850,
          height: 600,
          constraints: const BoxConstraints(minHeight: 83.0, minWidth: 19.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: 1100,
                  height: 1200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
                    image: const DecorationImage(
                      image: AssetImage('images/psw.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _header(),
                    _inputFields(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      )
    )
    );
  }

  Widget _header() {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 200,
          child: Image.asset(
            'images/robit15.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 42.0),
      ],
    );
  }
}

class SelectedText extends ChangeNotifier {
  String _text = '';

  String get text => _text;

  void selectText(String newText) {
    _text = newText;
    notifyListeners();
  }
}

Widget _inputFields() {
  return Consumer<SelectedText>(
    builder: (context, selectedText, _) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              selectedText.selectText("Görkem");
            },
            child: Container(
              height: 33.5,
              width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Center(
                child: Text(
                  'Metin',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              TxtBtn(
                text: "    Kaydet    ",
                onPressed: () {
                                  if (selectedText.text == 'Görkem') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PasswordRes()),
                    );
                  }
                },
              ),
            ],
          ),
        ],
      );
    },
  );
}
