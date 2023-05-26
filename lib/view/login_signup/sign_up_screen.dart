import 'package:flutter/material.dart';
import 'package:flutter_app/components/button.dart';
import 'package:flutter_app/components/text_field.dart';

import 'package:flutter_app/view/login_signup/base_screen.dart';
import 'package:flutter_app/view/login_signup/login_screen.dart';
import 'package:flutter_app/view/login_signup/sign_up_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      imagePath: 'images/login.gif',
      children: [
        SizedBox(height: 30),
        _header(context),
        _inputFields(context),
        _loginInfo(context),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 200,
      child: Image.asset(
        'images/robit15.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _inputFields(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        TxtFld(
          hintText: "Kullanıcı Adı",
          prefixIcon: Icons.person_rounded,
        ),
        const SizedBox(height: 10),
        TxtFld(
          hintText: "(5**)(***)(****)",
          prefixIcon: Icons.phone,
        ),
        const SizedBox(height: 10),
        TxtFld(
          hintText: "E-Posta ",
          prefixIcon: Icons.mail,
        ),
        const SizedBox(height: 10),
        TxtFld(
          hintText: "Şifre",
          obscureText: true,
          prefixIcon: Icons.lock,
        ),
        const SizedBox(height: 10),
        TxtFld(
          hintText: "Şifre Tekrar",
          prefixIcon: Icons.lock,
          obscureText: true,
        ),
        const SizedBox(height: 25),
        TxtBtn(
          text: "   Kaydol   ",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}

_loginInfo(BuildContext context) {
  {
    const SizedBox(height: 10);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Hesabınız var mı?",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 12,
            )),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: const Text("Giriş Yap",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 17, 255),
                  fontSize: 12,
                )))
      ],
    );
  }
}

Widget _signup(BuildContext context) {
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
