import 'package:flutter/material.dart';
import 'package:swipe/shakhmatka/shakhmatkalist.dart';

import '../style/colors.dart';
import '../style/font.dart';

class ShakhmatkaTable extends StatelessWidget {
  const ShakhmatkaTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '32 квартиры',
          style: individualTitleText,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: greyE9,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/shakhmatkalist');
                },
                child: const Text(
                  'список',
                  style: actionButtonText,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const Stack(
        children: [
          MyDropdown(),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomExpansionTile(
              title: Text(
                'Корпус 2, секция 4',
                style: dropdownListText,
              ),
              options: [
                'Корпус 2, секция 4',
                'Корпус 2, секция 3',
                'Корпус 2, секция 2',
                'Корпус 2, секция 1',
              ],
            ),
          ),
        ],
      ),
      backgroundColor: whitee4,
    );
  }
}

class MyDropdown extends StatefulWidget {
  const MyDropdown({Key? key}) : super(key: key);

  @override
  MyDropdownState createState() => MyDropdownState();
}

class MyDropdownState extends State<MyDropdown> {
  int? selectedButtonIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                margin: const EdgeInsets.all(2.5),
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              for (int j = 1; j <= 7; j++)
                                Container(
                                  width: 40,
                                  height: 30,
                                  margin: const EdgeInsets.all(2.5),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: transparent),
                                  ),
                                  child: Text(
                                    j.toString(),
                                    style: shakhmatkaText2,
                                  ),
                                ),
                            ],
                          ),
                          Column(
                            children: List.generate(8, (i) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 40,
                                    margin: const EdgeInsets.all(2.5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: transparent),
                                    ),
                                    child: Text(
                                      (i + 1).toString(),
                                      style: shakhmatkaText2,
                                    ),
                                  ),
                                  for (int j = 1; j <= 7; j++)
                                    GestureDetector(
                                      onTap: () {
                                        if (!((i == 1 && j == 5) ||
                                            (i == 3 && (j == 4 || j == 5)))) {
                                          setState(() {
                                            selectedButtonIndex = i * 8 + j;
                                          });
                                          _showBottomSheet(context);
                                        }
                                      },
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        margin: const EdgeInsets.all(2.5),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: (i == 1 && j == 5) ||
                                                  (i == 3 && (j == 4 || j == 5))
                                              ? greyCB
                                              : white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color:
                                                selectedButtonIndex == i * 8 + j
                                                    ? blueaccentA4
                                                    : transparent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.zero,
                                          child: Text(
                                            (i == 1 && j == 5) ||
                                                    (i == 3 &&
                                                        (j == 4 || j == 5))
                                                ? ''
                                                : '42.02',
                                            style: shakhmatkaText1,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      barrierColor: transparent,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/shakhmatkapage');
          },
          child: Container(
            height: 280,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: black26,
                  offset: Offset(0, -4),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/img/Rectangle36.png',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          '№232',
                          style: schemeIndividualPageText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '3 400 000 ₴',
                          style: titlePriceCardApartsText,
                        ),
                        const Text(
                          '1-к квартира\n28.5 м², 1/8 эт.',
                          style: titleApartsText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Черновая',
                          style: appBarText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: black,
                              fontSize: 16.0,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '30 000 ₴ ',
                                style: individualRichText,
                              ),
                              TextSpan(
                                text: 'и за м²',
                                style: individualMetrText,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/shakhmatkapage');
                          },
                          child: Image.asset(
                            'assets/img/schemeaparts.png',
                            width: 185,
                            height: 160,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/shakhmatkafilter');
                  },
                  child: const Text(
                    'Фильтр',
                    style: filterTable,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
