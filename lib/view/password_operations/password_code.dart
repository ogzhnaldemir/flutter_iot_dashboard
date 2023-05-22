import 'package:flutter/material.dart';
import 'package:flutter_app/components/button.dart';
import 'package:flutter_app/components/text_field.dart';
import 'package:flutter_app/view/password_operations/password_ok.dart';



class AccPage extends StatelessWidget {
  const AccPage({Key? key}) : super(key: key);

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
                  color: Colors.black,
                  width: 0.5,
                ),
                color: const Color.fromARGB(255, 255, 255, 255),
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
                        image: const DecorationImage(
                          image: AssetImage('images/resetPass.gif'),
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
                        _inputFields(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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

  Widget _inputFields(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        TxtFld(
          hintText: "Kodu Giriniz",
          prefixIcon: Icons.security_outlined,
        ),
        const SizedBox(height: 75),
        TxtBtn(
          text: "Kaydet",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ok_Page()),
            );
          },
        ),
      ],
    );
  }
}
