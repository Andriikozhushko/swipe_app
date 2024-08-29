import 'package:flutter/material.dart';
import 'package:swipe/pages/chat/chatwithoperator.dart';
import 'package:swipe/pages/chat/chatwithseller.dart';
import 'package:swipe/pages/feeds/favoritenovostroimarket.dart';
import 'package:swipe/pages/feeds/favoritesecondarymarket.dart';
import 'package:swipe/pages/feeds/main_page.dart';
import 'package:swipe/pages/feeds/tabbarmainfilter.dart';
import 'package:swipe/pages/info_pages/buyads_page.dart';
import 'package:swipe/pages/info_pages/createarticle.dart';
import 'package:swipe/pages/info_pages/inmap.dart';
import 'package:swipe/pages/info_pages/mapinfilter.dart';
import 'package:swipe/pages/info_pages/mfc_page.dart';
import 'package:swipe/pages/info_pages/notarius_page.dart';
import 'package:swipe/pages/info_pages/personal_accout.dart';
import 'package:swipe/pages/login/login.dart';
import 'package:swipe/pages/login/loginnumberstep.dart';
import 'package:swipe/pages/login/loginsmsstep.dart';
import 'package:swipe/pages/product_page/myapart_page.dart';
import 'package:swipe/pages/product_page/novostroi_page.dart';
import 'package:swipe/pages/product_page/privateapart_page.dart';
import 'package:swipe/shakhmatka/shakhmatkafilter.dart';
import 'package:swipe/shakhmatka/shakhmatkaindividualpage.dart';
import 'package:swipe/shakhmatka/shakhmatkalist.dart';
import 'package:swipe/shakhmatka/shakhmatkatable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        // Авторизация
        '/login': (context) => const LoginPage(),
        '/login2step': (context) => const Login2StepPage(),
        '/login3step': (context) => const Login3StepPage(),
        // Шахматка
        '/shakhmatkatable': (context) => const ShakhmatkaTable(),
        '/shakhmatkapage': (context) => const ShakhmatkaIndividualPage(),
        '/shakhmatkalist': (context) => const ShakhmatkaList(),
        '/shakhmatkafilter': (context) => const ShakhmatkaFilter(),
        // Страницы апартаментов
        '/novostroipage': (context) => const NovostroiPage(),
        '/privatapart': (context) => const PrivatapartPage(),
        '/myapart': (context) => const MyApartPage(),

        // Одиночные страницы
        '/notariuspage': (context) => const NotariusPage(),
        '/map': (context) => const MapWithMarkers(),
        '/mfc': (context) => const MfcPage(),
        '/buyads': (context) => const BuyAdsPage(),

        // Чаты
        '/chatwithoperator': (context) => const ChatWithOperator(),
        '/chatwithseller': (context) => const ChatWithSeller(),

        //Избранное
        '/favsecondary': (context) => const FavoriteSecondaryMarket(),
        '/favnovostroi': (context) => const FavoriteNovostroi(),

        //Фильтры
        '/myfilter': (context) => const MyFilter(),
        '/mapinfilter': (context) => const MapInFilter(),

        // Страницы редактирования
        '/personalaccount': (context) => const PersonalAccount(),
        '/createarticle': (context) => const CreateArticle(),

        // Главная страница
        '/lenta': (context) => const LentaPage(),
      },
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
    );
  }
}
