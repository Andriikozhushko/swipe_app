import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/font.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientgreen1, gradientgreen2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: 280,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20.0, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Image.asset(
                              'assets/img/swipe_logomenu.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Image.asset(
                              'assets/img/settings.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/img/avatar.png'),
                                radius: 40,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Юля Туст',
                              style: leftMenuNameText,
                            ),
                            const Text(
                              'email@gmail.com',
                              style: leftMenuSecondaryText,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/createarticle');
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                    color: black50, width: 1),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                              ),
                              child: const Text(
                                'Создать обьявление',
                                style: leftMenuButtonText,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Лента объявлений',
                    style: leftMenuButtonText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/lenta');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Новое объявление',
                    style: leftMenuButtonText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/personalaccount');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Мое объявление',
                    style: leftMenuButtonText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/myapart');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Избранное',
                    style: leftMenuButtonText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/favsecondary');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Сохраненные фильтры',
                    style: leftMenuButtonText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/myfilter');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Настройки',
                    style: leftMenuButtonText,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Нотариусы',
                    style: leftMenuButtonText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/notariuspage');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'МФЦ',
                    style: leftMenuButtonText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/mfc');
                  },
                ),
                ListTile(
                  dense: true,
                  title: const Text(
                    'Обратная связь',
                    style: leftMenuButtonText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/chatwithoperator');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
