import 'package:flutter/material.dart';



class BaseScreen extends StatelessWidget {
  const BaseScreen(
      {super.key, required this.imagePath, required this.children});
  final List<Widget> children;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(37, 70, 110, 0.253),
        body: SingleChildScrollView(
            child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 1),
                  width: 0.5,
                ),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              padding: const EdgeInsets.all(32.0),
              width: 850,
              height: 600,
              constraints:
                  const BoxConstraints(minHeight: 83.0, minWidth: 19.0),
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
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: children),
                  )
                ],
              ),
            ),
          ),
        )));
        }
      }
