import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientdarkgreen1, gradientdarkgreen2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 160),
              Image.asset('assets/img/swipeLogo.png'),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 95),
                child: Text(
                  'Открой доступ к самой полной базе рынка квартир в Киева!',
                  style: descriptionLoginSecondaryText,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [gradientgreenlight1, gradientgreenlight2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login2step');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: transparent,
                    shadowColor: transparent,
                  ),
                  child: const Text(
                    'Войти',
                    style: floatingButtonText,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Впервые у нас?',
                    style: loginThinText.copyWith(
                      color: black60,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Регистрация',
                    style: loginBoldAddedText,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
