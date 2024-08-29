import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:swipe/leftmenu/leftmenu.dart';
import '../../models/adproduct.dart';
import '../../models/favproduct.dart';
import '../../style/colors.dart';
import '../../utils/constants.dart';

import '../../style/font.dart';

class FavoriteSecondaryMarket extends StatefulWidget {
  const FavoriteSecondaryMarket({Key? key}) : super(key: key);

  @override
  FavoriteSecondaryMarketState createState() => FavoriteSecondaryMarketState();
}

class FavoriteSecondaryMarketState extends State<FavoriteSecondaryMarket> {
  int selectedCategoryIndex = 0;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    List<dynamic> combinedList = [
      ...favProducts ,
    ];
    combinedList.sort((a, b) => (a.id ?? 0).compareTo(b.id ?? 0));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitef5,
        titleSpacing: 0,
        leading: IconButton(
          icon: Image.asset('assets/img/chevron-down.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Избранное',
              style: appBarInfoPageText,
            ),
            SizedBox(width: 15),
            Text(
              '254',
              style: appBarCountText,
            ),
          ],
        ),
        actions:[
          TextButton(
          onPressed: () {
    Navigator.of(context).pop();
    },
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/favnovostroi');
        },
        child: const Text(
          'Квартиры',
          style: switchFilterText,
              ),
      ),
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  itemCount: combinedList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = combinedList[index];
                    if (item is FavProduct) {
                      return _buildProductItem(item, index);
                    }
                    return Container();
                  },
                  staggeredTileBuilder: (int index) {
                    final item = combinedList[index];
                    if (item is AdProduct && index == 4) {
                      return const StaggeredTile.extent(2, 300);
                    } else if (item is FavProduct) {
                      return const StaggeredTile.fit(1);
                    } else {
                      return const StaggeredTile.fit(1);
                    }
                  },

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(FavProduct favProduct, int index) {
    bool accentGreen = favProduct.accentGreen;
    bool accentRed = favProduct.accentRed;

    Color backgroundColor = transparent;

    if (accentGreen) {
      backgroundColor = redaccent;
    } else if (accentRed) {
      backgroundColor = greenaccent;
    }

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/privatapart', arguments: favProduct);
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
                    favProduct.imageAssetPath,
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
                        '${favProduct.price.toString()} ₴',
                        style: titlePriceCardApartsText,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${favProduct.rooms}-к квартира, ${favProduct.quadratmetr} м², ${favProduct.etage} эт.',
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
                                'р-н ${favProduct.description1}',
                                style: descriptionCardsApartsText,
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'ул. ${favProduct.description2}',
                                style: descriptionCardsApartsText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        'Сегодня в ${favProduct.avaibleTime}',
                        style: timeCardsApartsText,
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
                        favProduct.isFavorite = !favProduct.isFavorite;
                      });
                    },
                    icon: Image.asset(
                      favProduct.isFavorite
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

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const FavoriteSecondaryMarket(),
    ),
  );
}
