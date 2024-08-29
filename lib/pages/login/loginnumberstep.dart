import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class Login2StepPage extends StatefulWidget {
  const Login2StepPage({Key? key});

  @override
  Login2StepPageState createState() => Login2StepPageState();
}

class Login2StepPageState extends State<Login2StepPage> {
  bool isFocused = false;

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
              const SizedBox(height: 72),
              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  width: 250,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: const LinearGradient(
                      colors: [gradientdarkgreen3, gradientdarkgreen4],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: TextField(
                    style: const TextStyle(
                      height: 1.0,
                      color: white,
                    ),
                    decoration: InputDecoration(
                      hintText: isFocused ? '' : 'Телефон',
                      hintStyle: loginInputText,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.fromLTRB(
                        12.0,
                        0.0,
                        12.0,
                        14,
                      ),
                    ),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.left,
                    onTap: () {
                      setState(() {
                        isFocused = true;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 25),
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
                    Navigator.pushNamed(context, '/login3step');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: transparent,
                    shadowColor: transparent,
                  ),
                  child: const Text(
                    'Далее',
                    style: floatingButtonText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
