import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:swipe/leftmenu/leftmenu.dart';
import 'package:swipe/models/novostroi.dart';
import 'package:swipe/models/product.dart';

import '../../models/adproduct.dart';
import '../../style/colors.dart';
import '../../utils/constants.dart';

import '../../style/font.dart';

class LentaPage extends StatefulWidget {
  const LentaPage({Key? key}) : super(key: key);

  @override
  LentaPageState createState() => LentaPageState();
}

class LentaPageState extends State<LentaPage> {
  int selectedCategoryIndex = 0;
  bool isFavorite = false;
  List<String> categories = [
    'Вторичный рынок',
    'Новостройки',
    'Все',
    'Коттеджи'
  ];

  void _menuOpen(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> combinedList = [
      ...productsList,
      ...novostrois,
      ...adproducts
    ];
    combinedList.sort((a, b) => (a.id ?? 0).compareTo(b.id ?? 0));

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
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/myfilter');
                  },
                  child: const Text(
                    'Фильтр',
                    style: appBarText,
                  ),
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
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/favsecondary');
                  },
                  child: const Text(
                    "Избранное",
                    style: appBarText,
                  ),
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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: List.generate(categories.length, (index) {
                        return Row(
                          children: [
                            _buildCategoryButton(categories[index], index),
                            const SizedBox(width: 10),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  itemCount: combinedList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = combinedList[index];
                    if (item is Product) {
                      return _buildProductItem(item, index);
                    } else if (item is Novostroi) {
                      return _buildNovostroiItem(item, context);
                    } else if (item is AdProduct) {
                      return _buildAdProductItem(item, index);
                    }
                    return Container();
                  },
                  staggeredTileBuilder: (int index) {
                    final item = combinedList[index];
                    if (item is AdProduct && index == 4) {
                      return const StaggeredTile.extent(2, 300);
                    } else if (item is Product) {
                      return const StaggeredTile.fit(1);
                    } else if (item is Novostroi) {
                      return const StaggeredTile.fit(1);
                    }
                    return const StaggeredTile.fit(2);
                  },
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                ),
                const SizedBox(height: 75),
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
                        'Лента',
                        style: floatingButtonText,
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
                          'assets/img/list.png',
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
                        Navigator.pushNamed(context, '/map');
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
                            'assets/img/mapicon.png',
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

  Widget _buildCategoryButton(String category, int index) {
    final selected = selectedCategoryIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Container(
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        decoration: BoxDecoration(
          color: selected ? null : transparent,
          border: selected
              ? null
              : Border.all(
                  color: blueaccentA4,
                  width: 1,
                ),
          borderRadius: BorderRadius.circular(10),
          gradient: selected
              ? const LinearGradient(
                  colors: [
                    gradientgreenlight1,
                    gradientgreenlight2,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
        ),
        child: Text(
          category,
          style: TextStyle(
            color: selected ? white : blueaccentA4,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildProductItem(Product product, int index) {
    bool isUrgentSale = product.isUrgentSale;
    bool bargainPrice = product.bargainPrice;
    bool accentGreen = product.accentGreen;
    bool accentRed = product.accentRed;

    Color backgroundColor = transparent;

    if (accentGreen) {
      backgroundColor = redaccent;
    } else if (accentRed) {
      backgroundColor = greenaccent;
    }

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/privatapart', arguments: product);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(left: 13, right: 13, bottom: 10),
        color: transparent,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    product.imageAssetPath,
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${product.price.toString()} ₴',
                        style: titlePriceCardApartsText,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${product.rooms}-к квартира, ${product.quadratmetr} м², ${product.etage} эт.',
                        style: titleApartsText,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 5),
                      Transform.translate(
                        offset: const Offset(-4, 0),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          color: backgroundColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'р-н ${product.description1}',
                                style: descriptionCardsApartsText,
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'ул. ${product.description2}',
                                style: descriptionCardsApartsText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        'Сегодня в ${product.avaibleTime}',
                        style: timeCardsApartsText,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            if (isUrgentSale)
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        gradientredorange1,
                        gradientredorange2,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Text(
                    'срочная продажа',
                    style: labelText,
                  ),
                ),
              ),
            if (bargainPrice)
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        gradientbluegrin1,
                        gradientgreenlight1,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Text(
                    'торг',
                    style: labelText,
                  ),
                ),
              ),
            Positioned(
              top: -6,
              right: -8,
              child: ClipOval(
                child: Material(
                  color: transparent,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        product.isFavorite = !product.isFavorite;
                      });
                    },
                    icon: Image.asset(
                      product.isFavorite
                          ? 'assets/img/appbarcheckcircle.png'
                          : 'assets/img/Ellipse2.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdProductItem(AdProduct adproduct, int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/myapart');
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(left: 13, right: 13, bottom: 10),
        color: transparent,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    adproduct.imageAssetPath,
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${adproduct.price.toString()} ₴',
                            style: titlePriceCardApartsText3,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'р-н ${adproduct.description1}',
                            style: descriptionCardsApartsText,
                          ),
                          Text(
                            'ул. ${adproduct.description2}',
                            style: descriptionCardsApartsText,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(height: 6),
                          Text(
                            '${adproduct.rooms}-к квартира, ${adproduct.quadratmetr} м², ${adproduct.etage} эт.',
                            style: titlePriceCardApartsText2,
                          ),
                          const SizedBox(height: 14),
                          Text(
                            'Сегодня в ${adproduct.avaibleTime}',
                            style: timeCardsApartsText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Positioned(
              top: 3,
              right: -5,
              child: ClipOval(
                child: Material(
                  color: transparent,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        adproduct.isFavorite = !adproduct.isFavorite;
                      });
                    },
                    icon: Image.asset(
                      adproduct.isFavorite
                          ? 'assets/img/appbarcheckcircle.png'
                          : 'assets/img/Ellipse2.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNovostroiItem(Novostroi novostroi, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/novostroipage', arguments: novostroi);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(left: 13, right: 13, bottom: 10),
        color: transparent,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    novostroi.imageAssetPath,
                    width: double.infinity,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        novostroi.title,
                        style: titleApartsText2,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'р-н ${novostroi.description1}',
                        style: descriptionCardsApartsText,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'ул. ${novostroi.description2}',
                        style: descriptionCardsApartsText,
                      ),
                      const SizedBox(height: 3),
                      RichText(
                        text: TextSpan(
                          style: regularAddedText,
                          children: <TextSpan>[
                            const TextSpan(text: 'от '),
                            TextSpan(
                              text: '${novostroi.price} ₴',
                              style: titlePriceCardApartsText2,
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: regularAddedText,
                          children: <TextSpan>[
                            const TextSpan(text: 'от '),
                            TextSpan(
                              text: '${novostroi.quadratmetr} м²',
                              style: titlePriceCardApartsText2,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: -6,
              right: -8,
              child: ClipOval(
                child: Material(
                  color: transparent,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        novostroi.isFavorite = !novostroi.isFavorite;
                      });
                    },
                    icon: Image.asset(
                      novostroi.isFavorite
                          ? 'assets/img/appbarcheckcircle.png'
                          : 'assets/img/Ellipse2.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
