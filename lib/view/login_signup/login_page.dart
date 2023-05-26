import 'package:flutter/material.dart';
import 'package:flutter_app/components/button.dart';
import 'package:flutter_app/components/text_field.dart';

import 'package:flutter_app/view/login_signup/sign_up_page.dart';
import '../main_menu/menu.dart';
import 'package:flutter_app/view/password_operations/password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                        image: const DecorationImage(
                          image: AssetImage('images/giris.gif'),
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
                        _inputField(context),
                        _forgotPassword(context),
                        _signup(context),
                      ],
                    ),

                    /* Expanded(
                child: Center(
                  child: LogoAnimation(),
                ),
              ),*/
                  )
                ],
              ),
            ),
          ),
        )));
  }

  _header() {
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
        const SizedBox(
          height: 40.0,
        )
      ],
    );
  }

  _inputField(context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        TxtFld(
          hintText: "Kullanıcı Adı",
          prefixIcon: Icons.person,
        ),
        const SizedBox(height: 10),
        TxtFld(
          hintText: "Şifre",
          prefixIcon: Icons.lock,
          obscureText: true,
        ),
        const SizedBox(height: 20),
        TxtBtn(
          text: "Giriş Yap",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AnaMenu()),
            );
          },
        ),
        const SizedBox(height: 50),
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Password()),
          );
        },
        child: const Text(
          "Şifremi Unuttum",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 17, 255),
            fontSize: 12,
          ),
        ));
  }

  _signup(context) {
    const SizedBox(height: 2);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Hesap Oluştur",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 12,
            )),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUpPage()),
            );
          },
          child: const Text(
            "Kaydol!",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 17, 255),
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
