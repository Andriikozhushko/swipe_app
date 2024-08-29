import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class NotariusPage extends StatelessWidget {
  const NotariusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitef5,
        leading: IconButton(
          icon: Image.asset('assets/img/chevron-down.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Нотариусы',
          style: appBarInfoPageText,
        ),
        titleSpacing: 0,
        actions: [
          IconButton(
            icon: Image.asset('assets/img/x-circle.png'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 20),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/img/avatar3.png'),
                  radius: 30,
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Анна Тест',
                      style: listNotariusTitleText,
                    ),
                    Text(
                      '+7 930 250 60 30',
                      style: listNotariusDescriptionText,
                    ),
                    Text(
                      'email@gmail.com',
                      style: listNotariusDescriptionText,
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: IconButton(
                    iconSize: 30,
                    icon: Image.asset('assets/img/phone-call.png'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
