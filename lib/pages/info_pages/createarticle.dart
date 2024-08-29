import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class CreateArticle extends StatefulWidget {
  const CreateArticle({Key? key}) : super(key: key);

  @override
  CreateArticleState createState() => CreateArticleState();
}

class CreateArticleState extends State<CreateArticle> {

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
          'Новое объявление',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Адрес', style: accountPageTitleFieldText,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/mapinfilter');
                    },
                    child: Row(
                      children: [
                        const Text('Указать на карте', style: createArticleMapText,),
                        SizedBox(width: 10),
                        Image.asset('assets/img/mapgreen.png'),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'р-н Центральный, ул. Темерязева 7',
                  hintStyle: labelAdsPageText,
                  filled: true,
                  fillColor: grey20da,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Выбрать ЖК', style: accountPageTitleFieldText,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/shakhmatkatable');
                    },
                    child: Row(
                      children: [
                        const Text('Добавиться в шахматку', style: createArticleMapText,),
                        SizedBox(width: 10),
                        Image.asset('assets/img/gridicongreen.png'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  'ЖК Семейный',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'ЖК Семейный',
                                  style: accountPageTitleFieldText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'ЖК Семейный',
                                  style: avaibleApartsText,
                                ),
                                const SizedBox(width: 5),
                                Image.asset(
                                  'assets/img/govector.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'ЖК Семейный',
                                  style: accountPageTitleFieldText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Нет квартир',
                                  style: avaibleApartsText,
                                ),
                                const SizedBox(width: 5),
                                Image.asset(
                                  'assets/img/govector.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'ЖК Семейный',
                                  style: accountPageTitleFieldText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  '3 квартиры',
                                  style: avaibleApartsText,
                                ),
                                const SizedBox(width: 5),
                                Image.asset(
                                  'assets/img/govector.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'ЖК Семейный',
                                  style: accountPageTitleFieldText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  '256 квартир',
                                  style: avaibleApartsText,
                                ),
                                const SizedBox(width: 5),
                                Image.asset(
                                  'assets/img/govector.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Документ основания', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  'Собственность',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Собственность',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Довереность',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Утраченные документы',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'На восстановление',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Назначение', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  'Апартаменты',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Апартаменты',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Коттедж',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Дача',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Подвальное помещение',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Количество комнат', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  '1 комнатная',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '2 комнатная',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '3 комнатная',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '4 комнатная',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '5 комнатная и более',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Планировка', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  'Студия, санузел',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Студия, санузел',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Студия, санузел',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Студия, санузел',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Студия, санузел',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Жилое состояние', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  'Требует ремонта',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Не требует ремонта',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Косметический ремонт',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Пустая коробка',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Ужасное состояние',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Общая площадь', style: accountPageTitleFieldText),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '70 м²',
                  hintStyle: labelAdsPageText,
                  filled: true,
                  fillColor: grey20da,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Площадь кухни', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '28.5 м²',
                  hintStyle: labelAdsPageText,
                  filled: true,
                  fillColor: grey20da,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Балкон/лоджия', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  'Да',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Нет',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Тип отопления', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  'Газовое',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Электро',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Гибрид',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Общее',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Отсутствует',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Варианты расчета', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  'Мат.капитал',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Ипотека',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Кредит',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Криптовалюта',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Золото',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Коммисия агенту', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  '100 000 ₴',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '200 000 ₴',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '300 000 ₴',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '400 000 ₴',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '500 000 ₴ и более',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Способ связи', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                backgroundColor: const Color(0x20DADADA),
                collapsedBackgroundColor: const Color(0x20DADADA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                initiallyExpanded: false,
                title: const Text(
                  'Звонок + сообщение',
                  style: labelAdsPageText,
                ),
                childrenPadding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Только звонки',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Только сообщения',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Видеосвязь',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 7),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Личная встреча',
                                  style: labelAdsPageText,
                                ),
                                SizedBox(width: 6),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Описание', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              TextField(
                minLines: 5,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'Особенная квартира в одном из самых престижных и закрытых элитных домов - Diadema Club House. Крестовский остров. Собственная терраса 109 кв. м с газонным покрытием. Прямой вид на воду, Среднюю Невку. Высокие потолки 3,4 м. Панорамные окна. Свободная планировка. Теплые водяные полы в санузлах. 2 машиноместа в подземном паркинге. Жилой комплекс располагается на Крестовском острове - сложившейся локации элитной недвижимости.',
                  hintStyle: labelAdsPageText,
                  filled: true,
                  fillColor: grey20da,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Цена', style: accountPageTitleFieldText,),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'От 20 000 ₴',
                  hintStyle: labelAdsPageText,
                  filled: true,
                  fillColor: grey20da,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(child: Text("Главное фото", style: createArticleText)),
                        const SizedBox(height: 7,),
                        SizedBox(
                          height: 100, // Установите желаемую высоту
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/img/house/house3.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/addphotoicon.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),



              const SizedBox(height: 30,),

              Center(
                child: Container(
                  height: 52,
                  width: double.infinity,
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
                      Navigator.pushNamed(context, '/login2step');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: transparent,
                      shadowColor: transparent,
                    ),
                    child: const Text(
                      'Продолжить',
                      style: floatingButtonText,
                    ),
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
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const CreateArticle(),
    ),
  );
}