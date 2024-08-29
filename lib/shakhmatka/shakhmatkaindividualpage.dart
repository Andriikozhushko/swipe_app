import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/font.dart';

class ShakhmatkaIndividualPage extends StatelessWidget {
  const ShakhmatkaIndividualPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitef5,
        title: const Text(
          '№232',
          style: individualTitleText,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: greyE9,
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),

      body:
        Padding(
          padding: const EdgeInsets.only(right: 0, left: 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 40),
                        const Text(
                          'Черновая',
                          style: schemeIndividualPageText,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '3 400 000 ₴',
                          style: titlePriceCardApartsText,
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '1-к квартира\n28.5 м², 1/8 эт.',
                          style: titleApartsText,
                        ),
                        const SizedBox(height: 13),
                        RichText(
                          text: const TextSpan(
                            style: individualRichText,
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
                        const SizedBox(height: 20),
                      ],
                    ),
                    Column(
                      children: [const SizedBox(height: 30,),
                        Image.asset(
                          'assets/img/schemeaparts.png',
                          width: 185,
                          height: 157,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //тут дивайдер
              const SizedBox(height: 17),

              const Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Divider(),
              ),
              const SizedBox(height: 10),
              const Padding(
                  padding: EdgeInsets.only(left: 17.0, right: 21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Column(
                    children: [
                      Text('Литер 2', style: detailsNovostroiText),
                      Text('Корпус', style: individDescriptionText),
                    ],
                  ),
                    Column(
                      children: [
                        Text('1', style: detailsNovostroiText,),
                        Text('Секция', style: individDescriptionText),
                      ],
                    ),
                    Column(
                      children: [
                        Text('3', style: detailsNovostroiText,),
                        Text('Этаж', style: individDescriptionText),
                      ],
                    ),
                    Column(
                      children: [
                        Text('4', style: detailsNovostroiText,),
                        Text('Cтояк', style: individDescriptionText, ),

                      ],
                    ),],
                                ),
                ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Divider(),
              ),
              const SizedBox(height: 17),
              
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 21.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [const Column(
                  children: [
                    Text('1 этаж', style: individualetageText,),
                  ],
                ),Column(
                  children: [
                    Image.asset(
                      'assets/img/schemecardsaparts.png',
                      width: 173,
                      height: 186,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),],),
              ),
            ],
          ),
        ),
      floatingActionButton: Container(
        width: 278,
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
                'Забронировать',
                style: floatingButtonText,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,



    );
  }
}
