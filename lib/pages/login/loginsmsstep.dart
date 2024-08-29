import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class Login3StepPage extends StatelessWidget {
  const Login3StepPage({Key? key});

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
                  'Введите код который мы отправили на указанный вами номер телефона',
                  style: descriptionLoginSecondaryText,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CodeTextField(),
                  SizedBox(width: 10),
                  CodeTextField(),
                  SizedBox(width: 10),
                  CodeTextField(),
                  SizedBox(width: 10),
                  CodeTextField(),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [gradientgreenlight1, blueaccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/lenta');
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
            ],
          ),
        ),
      ),
    );
  }
}

class CodeTextField extends StatefulWidget {
  const CodeTextField({Key? key});

  @override
  CodeTextFieldState createState() => CodeTextFieldState();
}

class CodeTextFieldState extends State<CodeTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: controller,
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: smsLoginText,
        decoration: const InputDecoration(
          counter: Offstage(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: white, width: 2),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: white, width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 0),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
