import 'package:flutter/material.dart';
import 'package:flutter_app/components/button.dart';
import 'package:flutter_app/components/text_field.dart';
import 'package:flutter_app/view/login_signup/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                            // width: 1100,
                            //height: 1200,
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
                                image: AssetImage('images/login.gif'),
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
                              const SizedBox(height: 30),
                              _header(context),
                              _inputFields(context),
                              _loginInfo(context),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }

  _header(context) {
    return SizedBox(
      height: 80,
      width: 200,
      child: Image.asset(
        'images/robit15.png',
        fit: BoxFit.contain,
      ),
    );
  }

  _inputFields(context) {
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
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
        ),
        const SizedBox(height: 50),
      ],
    );
  }

  _loginInfo(context) {
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
                MaterialPageRoute(builder: (context) => const LoginPage()),
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
