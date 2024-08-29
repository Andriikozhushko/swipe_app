import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class MyApartPage extends StatelessWidget {
  const MyApartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: greyE9),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: Image.asset('assets/img/eyeicon.png'),
            label: const Text(
              '250',
              style: iconMyPageText,
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Image.asset('assets/img/checkicongrey.png'),
            label: const Text(
              '6',
              style: iconMyPageText,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/img/house/house3.png'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '3 400 000 ₴',
                            style: privatApartPriceText,
                          ),
                          Text(
                            '1-к квартира, 28.5 м², 1/8 эт.',
                            style: adsPageText,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
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
                      const Text(
                        'р-н Центральный',
                        style: regularAddedText,
                      ),
                      const SizedBox(height: 3,),
                      const Text(
                        'ул. Темерязева 7',
                        style: regularAddedText,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, right: 0),
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
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: transparent,
                              shadowColor: transparent,
                            ),
                            child: const Text(
                              'Подтвердить актуальность',
                              style: novostroiLabelText,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
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
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
                      const SizedBox(
                        height: 15,
                      ),
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
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Особенная квартира в одном из самых престижных и закрытых элитных домов - Diadema Club House. Крестовский остров. Собственная терраса 109 кв. м с газонным покрытием. Прямой вид на воду, Среднюю Невку. Высокие потолки 3,4 м. Панорамные окна. Свободная планировка. Теплые водяные полы в санузлах. 2 машиноместа в подземном паркинге. Жилой комплекс располагается на Крестовском острове - сложившейся локации элитной недвижимости.',
                        style: descriptionPageApartsText,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
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
                              backgroundImage:
                                  AssetImage('assets/img/avatar.png'),
                              radius: 23,
                            ),
                            SizedBox(width: 17),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Юля Туст',
                                  style: privatPageListSecondaryText,
                                ),
                                Text(
                                  'частное лицо',
                                  style: profileApartPageText,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '');
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: blueaccentb4,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/buyads');
                            },
                            child: const Text(
                              'Продвижение  объявления',
                              style: buyAdsText,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 187,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              gradientgreenlight1,
              gradientgreenlight2,
            ],
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          child: const Stack(
            alignment: Alignment.center,
            children: [
              Text(
                'Редактировать',
                style: leftMenuButtonText,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
