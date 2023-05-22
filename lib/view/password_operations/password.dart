

import 'package:flutter/material.dart';
import 'package:flutter_app/components/button.dart';
import 'package:flutter_app/components/text_field.dart';
import 'package:flutter_app/view/password_operations/password_code.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(37, 70, 110, 0.253),
        body: SingleChildScrollView(
            child: Container(
          width: double.infinity, // Take up all available width
          padding: const EdgeInsets.symmetric(
              vertical: 100), // Adjust vertical spacing as needed
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
              child: Row(children: [
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
                        image: AssetImage('images/Questions.gif'),
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
                      _header(context),
                      _inputFields(context),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        )));
  }

  _header(context) {
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
        //  Text(
//"Şifreyi Yenile",
//style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        //  ),
//SizedBox(height: 110.0),
      ],
    );
  }

  _inputFields(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 70),
        TxtFld(
          hintText: "E-Posta Giriniz",
          prefixIcon: Icons.mail_sharp,
        ),
        /*   const SizedBox(height: 10),
        ogz_text_field(
          hintText: "Şifre",
          prefixIcon: Icons.lock,
          obscureText: true,
        ),
        const SizedBox(height: 10),
        ogz_text_field(
          hintText: "Şifre Tekrar",
          prefixIcon: Icons.lock,
          obscureText: true,
        ),*/
        const SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TxtBtn(
              text: "    Kaydet    ",
              onPressed: () {
                // Show notification message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("E-mailinize gönderilen kodu kontrol edin."),
                  ),
                );
              },
            ),
            const SizedBox(width: 25),
            TxtBtn(
              text: "Kodu Girmek İçin İlerle",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AccPage()),
                );
              },
            ),
            /*const SizedBox(width: 25),
            ogz_text_button(
              text: " ",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PasswordRes()),
                );
              },
            ),*/
          ],
        ),
      ],
    );
  }
}
