import 'package:flutter/material.dart';
import 'package:flutter_app/components/button.dart';
import 'package:flutter_app/components/text_field.dart';
import 'package:flutter_app/view/about/feed_back/feed_back.dart';
import 'package:flutter_app/view/login_signup/base_screen.dart';
import 'package:flutter_app/view/login_signup/sign_up_page.dart';
import 'package:flutter_app/view/login_signup/sign_up_screen.dart';
import 'package:flutter_app/view/main_menu/menu.dart';
import 'package:flutter_app/view/password_operations/password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      imagePath: 'images/giris.gif',
      children: [
        SizedBox(height: 30),
        _header(context),
        _inputFields(context),
        _signup(context),
        _forgotPassword(context),
      ],
    );
  }

  Widget _header(BuildContext context) {
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

  Widget _inputFields(BuildContext context) {
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

  _forgotPassword(BuildContext context) {
    {
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
              MaterialPageRoute(builder: (context) => const SignUpScreen()),
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
