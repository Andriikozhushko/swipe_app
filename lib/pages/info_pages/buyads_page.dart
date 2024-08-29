import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class BuyAdsPage extends StatefulWidget {
  const BuyAdsPage({Key? key}) : super(key: key);

  @override
  BuyAdsPageState createState() => BuyAdsPageState();
}

class BuyAdsPageState extends State<BuyAdsPage> {
  bool _addPhrase = false;
  bool _highlightColor = false;
  Color? _backgroundColor;
  String _selectedPhrase = '';
  bool _showSelectedPhrase = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: whitef5,
        leading: IconButton(
          icon: Image.asset('assets/img/chevron-down.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Продвижение',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 33),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/img/house/house3.png',
                            width: 210,
                          ),
                        ),
                        if (_showSelectedPhrase)
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    gradientredorange1,
                                    gradientredorange2
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                _selectedPhrase,
                                style: labelAdsText,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      '3 400 000 ₴',
                      style: titlePriceCardApartsText,
                    ),
                    Container(
                      width: 210,
                      decoration: BoxDecoration(
                        color: _backgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '1-к квартира, 28.5 м², 1/8 эт.',
                            style: adsPageText,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'р-н Центральный',
                            style: adsPageSecondaryText,
                          ),
                          Text(
                            'ул. Темерязева',
                            style: adsPageSecondaryText,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Сегодня в 15:00',
                      style: adsPageBlueText,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 33),
                  _buildCheckbox('Добавить фразу', _addPhrase, (value) {
                    setState(() {
                      _addPhrase = value ?? false;
                      if (!_addPhrase) {
                        _showSelectedPhrase = false;
                      } else {
                        _showPhraseDialog().then((selectedPhrase) {
                          if (selectedPhrase != null) {
                            setState(() {
                              _selectedPhrase = selectedPhrase;
                              _showSelectedPhrase = true;
                            });
                          }
                        });
                      }
                    });
                  }),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '199₴/мес',
                        style: addedButtonText,
                      ),
                    ],
                  ),
                  _buildCheckbox('Выделить цветом', _highlightColor, (value) {
                    setState(() {
                      _highlightColor = value!;
                      if (!_highlightColor) {
                        _updateBackgroundColor();
                      }
                    });
                  }),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '199₴/мес',
                        style: addedButtonText,
                      ),
                    ],
                  ),
                  if (_highlightColor)
                    Row(
                      children: [
                        _buildColorOption(redaccent1),
                        _buildColorOption(greenaccent2),
                      ],
                    ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 20),
            child: Container(
              width: 450,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: white,
                boxShadow: const [
                  BoxShadow(
                    color: black1a,
                    offset: Offset(0, 2),
                    blurRadius: 8,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset(
                          'assets/img/bigads_icon.png',
                          width: 65,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Большое объявление',
                        style: variantAdsPrimaryText,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Эффективность',
                            style: variantAdsSecondaryText,
                          ),
                          Image.asset('assets/img/gradientrectangle1.png'),
                          const Text(
                            '399₴/мес',
                            style: variantAdsAddedText,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 20),
            child: Container(
              width: 450,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: white,
                boxShadow: const [
                  BoxShadow(
                    color: black1a,
                    offset: Offset(0, 2),
                    blurRadius: 8,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset(
                          'assets/img/upads_icon.png',
                          width: 65,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Поднять объявление',
                        style: variantAdsPrimaryText,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Эффективность',
                            style: variantAdsSecondaryText,
                          ),
                          Image.asset('assets/img/gradientrectangle1.png'),
                          const Text(
                            '399₴/мес',
                            style: variantAdsAddedText,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 20),
            child: Container(
              width: 450,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: white,
                boxShadow: const [
                  BoxShadow(
                    color: black1a,
                    offset: Offset(0, 2),
                    blurRadius: 8,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/turboads_icon.png',
                        width: 65,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Поднять объявление',
                        style: variantAdsPrimaryText,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Эффективность',
                            style: variantAdsSecondaryText,
                          ),
                          Image.asset('assets/img/gradientrectangle2.png'),
                          const Text(
                            '499₴/мес',
                            style: variantAdsAddedText,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Container(
              height: 62,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [gradientgreenlight1, blueaccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(35),
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
                  'Оплатить 199₴',
                  style: floatingButtonText,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              'Разместить без оплаты',
              style: adsPageThinText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckbox(
    String title,
    bool value,
    ValueChanged<bool?> onChanged,
  ) {
    return Row(
      children: [
        SizedBox(
          width: 14.0,
          height: 14.0,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            visualDensity: VisualDensity.compact,
            checkColor: transparent,
            fillColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return blueaccent;
              }
              return transparent;
            }),
            shape: const CircleBorder(),
          ),
        ),
        const SizedBox(width: 8.0),
        Text(
          title,
          style: dialogPageText,
        ),
      ],
    );
  }

  Widget _buildColorOption(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _backgroundColor = color;
        });
      },
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: _backgroundColor == color
                ? blueaccentA4
                : whitecf,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        margin: const EdgeInsets.only(right: 10, top: 20),
      ),
    );
  }

  void _updateBackgroundColor() {
    _backgroundColor = _highlightColor ? _selectedBackgroundColor() : null;
  }

  Color? _selectedBackgroundColor() {
    if (_backgroundColor == red) {
      return red.withOpacity(0.5);
    } else if (_backgroundColor == green) {
      return green.withOpacity(0.5);
    }
    return null;
  }

  Future<String?> _showPhraseDialog() async {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              backgroundColor: white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: EdgeInsets.zero,
              scrollable: true,
              content: SizedBox(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.close,
                                color: transparent,
                              ),
                            ),
                            const Text(
                              'Выбор фразы',
                              style: dialogTitlePageText,
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.close),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        _buildPhraseCheckbox(setState, 'Подарок при покупке'),
                        _buildPhraseCheckbox(setState, 'Возможен торг'),
                        _buildPhraseCheckbox(setState, 'Квартира у моря'),
                        _buildPhraseCheckbox(setState, 'В спальном районе'),
                        _buildPhraseCheckbox(setState, 'Вам повезло с ценой!'),
                        _buildPhraseCheckbox(setState, 'Для большой семьи'),
                        _buildPhraseCheckbox(setState, 'Семейное гнездышко'),
                        _buildPhraseCheckbox(setState, 'Отдельная парковка'),
                        const SizedBox(
                          height: 65,
                        ),
                        Container(
                          height: 50,
                          width: 400,
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
                              Navigator.of(context).pop(_selectedPhrase);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: transparent,
                              shadowColor: transparent,
                            ),
                            child: const Text(
                              'Продлить',
                              style: floatingButtonText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildPhraseCheckbox(StateSetter setState, String phrase) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPhrase = _selectedPhrase == phrase ? '' : phrase;
        });
      },
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: whitef8,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              phrase,
              style: labelAdsPageText,
            ),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: transparent,
                ),
                color: _selectedPhrase == phrase
                    ? blueaccent
                    : whitee8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: BuyAdsPage(),
  ));
}
