import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/novostroi.dart';
import '../../style/colors.dart';
import '../../style/font.dart';

class NovostroiPage extends StatefulWidget {
  const NovostroiPage({Key? key}) : super(key: key);

  @override
  NovostroiPageState createState() => NovostroiPageState();
}

class NovostroiPageState extends State<NovostroiPage> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Novostroi novostroi =
    ModalRoute.of(context)!.settings.arguments as Novostroi;
    List<String> images = [
      novostroi.imageAssetPath,
      'assets/img/house/house1.png',
      'assets/img/house/house2.png',
      'assets/img/house/house3.png',
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: greyE9),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/img/appbarcheckcircle.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 220,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      PageView.builder(
                        itemCount: images.length,
                        controller: _pageController,
                        onPageChanged: (index) {
                          _updateCurrentPageIndex(index);
                        },
                        itemBuilder: (context, index) {
                          return Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          );
                        },
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: images.asMap().entries.map((entry) {
                            int index = entry.key;
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Container(
                                width: _currentPageIndex == index ? 10 : 8,
                                height: _currentPageIndex == index ? 10 : 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _currentPageIndex == index
                                      ? white
                                      : white.withOpacity(0.6),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Positioned(
                          left: 10,
                          bottom: 10,
                          child: Container(
                              width: 70,
                              height: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: blueaccentA4,
                                borderRadius: BorderRadius.circular(5),

                              ),
                              child: const Text('2 / 2020',
                                style: novostroiLabelText,))
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    novostroi.title,
                    textAlign: TextAlign.left,
                    style: privatApartPriceText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'р-н ${novostroi.description1}',
                            style: regularAddedText,
                          ),
                          const SizedBox(height: 3,),
                          Text(
                            'ул. ${novostroi.description2}',
                            style: regularAddedText,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/mapinfilter');
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/img/mapbutton.png',
                              width: 40,
                              height: 40,
                            ),
                            const Text(
                              'На карте',
                              style: inMapApartsPage,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: whitee6,
                  thickness: 1,
                  height: 0,
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '4 300 000 ₴',
                            style: detailsNovostroiText,
                          ),
                          Text(
                            'мин. цена',
                            style: detailsDescriptionNovostroiText,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '120 000 ₴',
                            style: detailsNovostroiText,
                          ),
                          Text(
                            'цена за м²',
                            style: detailsDescriptionNovostroiText,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '33-55 м²',
                            style: detailsNovostroiText,
                          ),
                          Text(
                            'площади',
                            style: detailsDescriptionNovostroiText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Divider(
                  color: whitee6,
                  thickness: 1,
                  height: 0,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          gradientgreenlight3,
                          gradientgreenlight4,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/shakhmatkatable');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: transparent,
                        shadowColor: transparent,
                      ),
                      child: const Text(
                        'Шахматка',
                        style: novostroiLabelText,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ExpansionTile(
                    shape: const Border(),
                    collapsedShape: const Border(),
                    initiallyExpanded: false,
                    title: const Text(
                      'Квартиры',
                      style: accountPageTitleText,
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
                                Row(
                                  children: [
                                    const Text(
                                      'Корпус 1',
                                      style: accountPageTitleFieldText,
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: blueaccentA4,
                                      ),
                                      child: const Text(
                                        '2 / 2020',
                                        style: mapLabelSecondaryText,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '8 квартир',
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
                                Row(
                                  children: [
                                    const Text(
                                      'Корпус 2',
                                      style: accountPageTitleFieldText,
                                    ),
                                    const SizedBox(width: 7),
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: blueaccentA4,
                                      ),
                                      child: const Text(
                                        '2 / 2020',
                                        style: mapLabelSecondaryText,
                                      ),
                                    ),
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
                                Row(
                                  children: [
                                    const Text(
                                      'Корпус 3',
                                      style: accountPageTitleFieldText,
                                    ),
                                    const SizedBox(width: 7),
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: blueaccentA4,
                                      ),
                                      child: const Text(
                                        '2 / 2020',
                                        style: mapLabelSecondaryText,
                                      ),
                                    ),
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
                                Row(
                                  children: [
                                    const Text(
                                      'Корпус 4',
                                      style: accountPageTitleFieldText,
                                    ),
                                    const SizedBox(width: 6),
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: blueaccentA4,
                                      ),
                                      child: const Text(
                                        '2 / 2020',
                                        style: mapLabelSecondaryText,
                                      ),
                                    ),
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
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ExpansionTile(
                    shape: const Border(),
                    collapsedShape: const Border(),
                    initiallyExpanded: false,
                    title: const Text(
                      'Новости',
                      style: accountPageTitleText,
                    ),
                    childrenPadding: EdgeInsets.zero,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              '30 января',
                              style: newsNovostroiText,
                            ),
                            Text(
                              'Открыт для продажи 3 литер',
                              style: accountThinText,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '31 января',
                              style: newsNovostroiText,
                            ),
                            Text(
                              'Открыт для продажи 3 литер',
                              style: accountThinText,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '30 января',
                              style: newsNovostroiText,
                            ),
                            Text(
                              'Открыт для продажи 3 литер',
                              style: accountThinText,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '31 января',
                              style: newsNovostroiText,
                            ),
                            Text(
                              'Открыт для продажи 3 литер',
                              style: accountThinText,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Смотреть все новости',
                              style: novostroiNewThinText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ExpansionTile(
                    shape: const Border(),
                    collapsedShape: const Border(),
                    initiallyExpanded: false,
                    title: const Text(
                      'Застройщик',
                      style: accountPageTitleText,
                    ),
                    childrenPadding: EdgeInsets.zero,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              style: novostroiPromaryDescription,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Подробнее',
                              style: novostroiNewThinText,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: SizedBox(
                                    width: 96,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/img/sporticon.png',
                                          width: 25,
                                          height: 25,
                                        ),
                                        const SizedBox(width: 5),
                                        const Flexible(
                                          child: Text(
                                            'Спортивная площадка',
                                            style: iconNovostroiText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: SizedBox(
                                    width: 96,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/img/sporticon.png',
                                          width: 25,
                                          height: 25,
                                        ),
                                        const SizedBox(width: 5),
                                        const Flexible(
                                          child: Text(
                                            'Спортивная площадка',
                                            style: iconNovostroiText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: SizedBox(
                                    width: 96,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/img/sporticon.png',
                                          width: 25,
                                          height: 25,
                                        ),
                                        const SizedBox(width: 5),
                                        const Flexible(
                                          child: Text(
                                            'Спортивная площадка',
                                            style: iconNovostroiText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Инфраструктура ЖК',
                                  style: newsNovostroiText,
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Статус ЖК',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      'Элитный',
                                      style: thinApartsText,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Вид дома',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      'Многоквартирный',
                                      style: thinApartsText,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Технология строительства',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Монолитный каркас с керамзитно-блочным заполнением',
                                            style: thinApartsoneText,
                                            textAlign: TextAlign.right,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Территория',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      'Закрытая',
                                      style: thinApartsText,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Расстояние до моря',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      '2500 м',
                                      style: thinApartsText,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Высота потолков',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      '2 м',
                                      style: thinApartsText,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 28,
                                ),
                                Text(
                                  'Коммуникации',
                                  style: newsNovostroiText,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Газ',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      'Нет',
                                      style: thinApartsText,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Отопление',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      'Центральное',
                                      style: thinApartsText,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Электричество',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      'Подключено',
                                      style: thinApartsText,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Канализация',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      'Центральная',
                                      style: thinApartsText,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Водоснабжение',
                                      style: listNovostroiSecondaryText,
                                    ),
                                    Text(
                                      'Центральное',
                                      style: thinApartsText,
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
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ExpansionTile(
                    shape: const Border(),
                    collapsedShape: const Border(),
                    initiallyExpanded: false,
                    title: const Text(
                      'Оформление и оплата',
                      style: accountPageTitleText,
                    ),
                    childrenPadding: EdgeInsets.zero,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Варианты оформления',
                              style: payNovostroiText,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Юстиция',
                              style: newsNovostroiText,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Варианты расчета',
                              style: payNovostroiText,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Рассрочка',
                                  style: newsNovostroiText,
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  'Материнский капитал',
                                  style: newsNovostroiText,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Статус недвижимости',
                                  style: listNovostroiSecondaryText,
                                ),
                                Text(
                                  'Жилое помещение',
                                  style: thinApartsText,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Сумма в договоре',
                                  style: listNovostroiSecondaryText,
                                ),
                                Text(
                                  'Неполная',
                                  style: thinApartsText,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ExpansionTile(
                    shape: const Border(),
                    collapsedShape: const Border(),
                    initiallyExpanded: false,
                    title: const Text(
                      'Документы',
                      style: accountDescriptionText,
                    ),
                    childrenPadding: EdgeInsets.zero,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 17, right: 17, bottom: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/img/pdficon.svg',
                                  width: 20,
                                  height: 25,
                                ),
                                const SizedBox(width: 10,),
                                const Text(
                                  'Выписка на землю (лит А)',
                                  style: payNovostroiText,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/img/pdficon.svg',
                                  width: 20,
                                  height: 25,
                                ),
                                const SizedBox(width: 10,),
                                const Text(
                                  'Выписка на землю (лит А)',
                                  style: payNovostroiText,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height:
                  213,
                  child: Image.asset(
                    'assets/img/mapsicle_map.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),floatingActionButton: FloatingActionButton(
      onPressed: () {},
      backgroundColor: greenaccent3,
      shape: const CircleBorder(),
      child: Image.asset(
        'assets/img/phoneintalk.png',
        width: 20,
        height: 20,
        fit: BoxFit.cover,
      ),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _updateCurrentPageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }
}