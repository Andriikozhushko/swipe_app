import 'package:flutter/material.dart';
import '../../categories.dart';
import '../../leftmenu/leftmenu.dart';
import '../../style/colors.dart';
import '../../style/font.dart';


void _menuOpen(BuildContext context) {
  Scaffold.of(context).openDrawer();
}

class MapWithMarkers extends StatefulWidget {
  const MapWithMarkers({super.key});

  @override
  MapWithMarkersState createState() => MapWithMarkersState();
}

class MapWithMarkersState extends State<MapWithMarkers> {
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> categories = ['Вторичный рынок', 'Новостройки', 'Все', 'Коттеджи'];

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                _menuOpen(context);
              },
              icon: Image.asset(
                'assets/img/appbarmenu.png',
              ),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Row(
              children: [
                Image.asset(
                  'assets/img/appbarfilter.png',
                ),
                const SizedBox(width: 10),
                const Text(
                  'Уточнить поиск',
                  style: appBarText,
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          IconButton(
            onPressed: () {},
            icon: Row(
              children: [
                Image.asset(
                  'assets/img/appbarcheckcircle.png',
                ),
                const SizedBox(width: 10),
                const Text(
                  "Избранное",
                  style: appBarText,
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      drawer: const DrawerWidget(),
      body: Stack(
        children: [
          Image.asset(
            'assets/img/bigmap.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            left: 120,
            top: 250,
            child: MarkerButton(number: '20', onTap: () {
              _showDialog(context, '20');
            }),
          ),
          Positioned(
            left: 260,
            top: 370,
            child: MarkerButton(number: '2', onTap: () {
              _showDialog(context, '2');
            }),
          ),
          Positioned(
            left: 50,
            top: 420,
            child: MarkerButton(number: '6', onTap: () {
              _showDialog(context, '6');
            }),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: 210,
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
                        'Карта',
                        style: floatingButtonText,
                      ),
                    ),
                  ),
                  Positioned(
                    left: -1,
                    top: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/lenta');
                      },
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: greenaccent1,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/img/listwhite.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    right: -1,
                    bottom: 0,
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white.withOpacity(0.9),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/img/mapgreen.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 5,
            right: 5,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < categories.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CategoryButton(
                        category: categories[i],
                        index: i,
                        selectedCategoryIndex: selectedCategoryIndex,
                        onCategorySelected: (index) {
                          setState(() {
                            selectedCategoryIndex = index;
                          });
                        },
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

  void _showDialog(BuildContext context, String number) {
    showDialog(
      barrierColor: transparent,
      context: context,

      builder: (BuildContext context) {
        return Center(
          child: SimpleDialog(
            contentPadding: EdgeInsets.zero,
            insetPadding: const EdgeInsets.all(10.0),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 490,

                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  width: 160,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset(
                                    'assets/img/house/house3.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '3 400 000 ₴',
                                    style: priceDialogMapText,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '1-к квартира, 28.5 м², 1/8 эт.',
                                    style: decriptionDialogMapText,
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'р-н Центральный',
                                    style: secondaryDialogMapText,
                                  ),
                                  Text(
                                    'ул. Темерязева',
                                    style: secondaryDialogMapText,
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'Сегодня в 15:00',
                                    style: timeCardsMapText,
                                  ),
                                ],
                              ),
                            ],
                          ),const SizedBox(height: 15,),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  width: 160,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset(
                                    'assets/img/house/house2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '8 670 000 ₴',
                                    style: priceDialogMapText,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '1-к квартира, 28.5 м², 1/8 эт.',
                                    style: decriptionDialogMapText,
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'р-н Центральный',
                                    style: secondaryDialogMapText,
                                  ),
                                  Text(
                                    'ул. Темерязева',
                                    style: secondaryDialogMapText,
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'Сегодня в 15:00',
                                    style: timeCardsMapText,
                                  ),
                                ],
                              ),
                            ],
                          ),const SizedBox(height: 15,),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  width: 160,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset(
                                    'assets/img/house/house3.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '3 400 000 ₴',
                                    style: priceDialogMapText,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '1-к квартира, 28.5 м², 1/8 эт.',
                                    style: decriptionDialogMapText,
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'р-н Центральный',
                                    style: secondaryDialogMapText,
                                  ),
                                  Text(
                                    'ул. Темерязева',
                                    style: secondaryDialogMapText,
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'Сегодня в 15:00',
                                    style: timeCardsMapText,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  width: 160,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset(
                                    'assets/img/house/house1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '8 670 000 ₴',
                                    style: priceDialogMapText,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '1-к квартира, 28.5 м², 1/8 эт.',
                                    style: decriptionDialogMapText,
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'р-н Центральный',
                                    style: secondaryDialogMapText,
                                  ),
                                  Text(
                                    'ул. Темерязева',
                                    style: secondaryDialogMapText,
                                  ),
                                  SizedBox(height: 9),
                                  Text(
                                    'Сегодня в 15:00',
                                    style: timeCardsMapText,
                                  ),
                                ],
                              ),
                            ],
                          ),


                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class MarkerButton extends StatelessWidget {
  final String number;
  final VoidCallback onTap;

  const MarkerButton({super.key, required this.number, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/img/marker.png',
            width: 40,
            height: 40,
          ),
          Positioned(
            top: 7,
            child: Text(
              number,
              style: mapLabelText,
            ),
          ),
        ],
      ),
    );
  }
}
