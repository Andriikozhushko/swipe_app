import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../style/colors.dart';
import '../../style/font.dart';

class PrivatapartPage extends StatefulWidget {
  const PrivatapartPage({Key? key}) : super(key: key);

  @override
  PrivatapartPageState createState() => PrivatapartPageState();
}

class PrivatapartPageState extends State<PrivatapartPage> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Product product =
    ModalRoute.of(context)!.settings.arguments as Product;
    List<String> images = [
      product.imageAssetPath,
      'assets/img/house/novostroi1.png',
      'assets/img/house/novostroi2.jpg',
      'assets/img/house/novostroi3.jpg',
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
                    ],
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
                            '${product.price.toString()} ₴',
                            style: privatApartPriceText,
                          ),
                          Text(
                            '${product.rooms}-к квартира, ${product.quadratmetr} м², ${product.etage} эт.',
                            style: adsPageText,
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
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'р-н ${product.description1}',
                        style: regularAddedText,
                      ),
                      const SizedBox(height: 3,),
                      Text(
                        'ул. ${product.description2}',
                        style: regularAddedText,
                      ),
                      const SizedBox(height: 40,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Вид недвижимости',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            'Вторичный рынок',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Статус дома',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            'Сдан',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Тип дома',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            'Панельный',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Количество комнат',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            '1-комнатная',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Назначение',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            'Апартаменты',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Жилое состояние',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            'Требует ремонта',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Планировка',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            'Студия, санузел',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Общая площадь',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            '28.5 м²',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Площадь кухни',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            '28.5 м²',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Балкон/лоджия',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            'Да',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Отопление',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            'Газовое',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Варианты расчета',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            'Мат. капитал, ипотека',
                            style: privatPageListSecondaryText,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              'Коммисия агенту',
                              style: privatPageListText,
                            ),
                          ),
                          Text(
                            '100 000 ₴',
                            style: privatPageListSecondaryText,
                          ),
                        ],

                      ), const SizedBox(height: 40,),
                      const Text(
                        'Особенная квартира в одном из самых престижных и закрытых элитных домов - Diadema Club House. Крестовский остров. Собственная терраса 109 кв. м с газонным покрытием. Прямой вид на воду, Среднюю Невку. Высокие потолки 3,4 м. Панорамные окна. Свободная планировка. Теплые водяные полы в санузлах. 2 машиноместа в подземном паркинге. Жилой комплекс располагается на Крестовском острове - сложившейся локации элитной недвижимости.',
                        style: descriptionPageApartsText,
                      ),const SizedBox(height: 40,),
                      Container(
                        height: 65,
                        decoration: BoxDecoration(
                          color: whiteded,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(width: 7),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/img/avatar2.png'),
                              radius: 23,
                            ),
                            SizedBox(width: 17),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Анна', style: privatPageListSecondaryText,),
                                Text('частное лицо', style: profileApartPageText,),
                              ],
                            ),
                          ],
                        ),
                      ),const SizedBox(height: 30,),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(15, 235, 87, 87),
                            shadowColor: transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Пожаловаться на объявление',
                            style: reportText,
                          ),
                        ),
                      ),
                      const SizedBox(height: 90,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: 143,
                    height: 52,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          gradientgreenlight1,
                          gradientgreenlight2,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: transparent,
                        elevation: 0,
                      ),
                      child: const Text(
                        '',
                      ),
                    ),
                  ),
                  Positioned(
                    left: -1,
                    top: 0,
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white.withOpacity(0.9),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/img/phoneintalkgreen.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/chatwithseller');
                      },
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: black10,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/img/message-circle.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _updateCurrentPageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }
}
