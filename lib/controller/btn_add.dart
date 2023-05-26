import 'package:flutter/material.dart';
import 'package:flutter_app/components/button.dart';
import 'package:flutter_app/view/main_menu/menu.dart';

class Btn extends StatefulWidget {
  @override
  _BtnState createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  List<String> buttonTexts = [];
  int selectedIndex = 0;

  void addButton() {
    setState(() {
      buttonTexts.add('Buton ${buttonTexts.length + 1}');
    });
  }

  void removeButton() {
    if (selectedIndex >= 0 && selectedIndex < buttonTexts.length) {
      setState(() {
        buttonTexts.removeAt(selectedIndex);
        selectedIndex = 0;
      });
    }
  }

  void navigateToPage(int index) {
    // Add your code here to navigate to the desired page when a button is clicked.
    // For example, you can use Navigator.push to navigate to a new page.
    print('Tıklanan buton: $index');
  }

  void changeButtonText(int index, String text) {
    setState(() {
      buttonTexts[index] = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buton Ekleme ve Silme Uygulaması',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Buton Ekleme ve Silme Uygulaması'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: addButton,
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: removeButton,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Expanded(
                child: GridView.builder(
                  itemCount: buttonTexts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 26,
                    mainAxisExtent: 40,
                  ),
                  itemBuilder: (context, index) {
                    bool isSelected = index == selectedIndex;
                    return AddButton(
                      text: buttonTexts[index],
                      isSelected: isSelected,
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        navigateToPage(index);
                      },
                      onTextChanged: (text) {
                        changeButtonText(index, text);
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 6),
              Container(
                child: TxtBtn(
                  text: "geri",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AnaMenu()),
                    );
                  },
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Silinecek Butonun Indeksi',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    selectedIndex = int.tryParse(value) ?? -1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;
  final ValueChanged<String> onTextChanged;
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  const AddButton({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
    required this.onTextChanged,
    this.width = 40.0,
    this.height = 60.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: isSelected
            ? Color.fromARGB(255, 0, 0, 0)
            : const Color.fromARGB(255, 185, 0, 0),
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  blurRadius: 8.0,
                  offset: const Offset(0, 4.0),
                ),
              ]
            : [],
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
