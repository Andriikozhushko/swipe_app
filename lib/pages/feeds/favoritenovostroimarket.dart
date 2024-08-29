import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:swipe/leftmenu/leftmenu.dart';
import 'package:swipe/models/favnovostroi.dart';
import '../../models/adproduct.dart';
import '../../style/colors.dart';
import '../../utils/constants.dart';

import '../../style/font.dart';

class FavoriteNovostroi extends StatefulWidget {
  const FavoriteNovostroi({Key? key}) : super(key: key);

  @override
  FavoriteNovostroiState createState() => FavoriteNovostroiState();
}

class FavoriteNovostroiState extends State<FavoriteNovostroi> {
  int selectedCategoryIndex = 0;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    List<dynamic> combinedList = [
      ...favnovostrois ,
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
        onTap: (){Navigator.of(context).pop();},
        child: const Text(
          'ЖК',
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
                    if (item is FavNovostroi) {
                      return _buildNovostroiItem(item, context);
                    }
                    return Container();
                  },
                  staggeredTileBuilder: (int index) {
                    final item = combinedList[index];
                    if (item is AdProduct && index == 4) {
                      return const StaggeredTile.extent(2, 300);
                    } else if (item is FavNovostroi) {
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

  Widget _buildNovostroiItem(FavNovostroi favNovostroi, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/novostroipage', arguments: favNovostroi);
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
                    favNovostroi.imageAssetPath,
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
                        favNovostroi.title,
                        style: titleApartsText2,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'р-н ${favNovostroi.description1}',
                        style: descriptionCardsApartsText,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'ул. ${favNovostroi.description2}',
                        style: descriptionCardsApartsText,
                      ),
                      const SizedBox(height: 3),
                      RichText(
                        text: TextSpan(
                          style: regularAddedText,
                          children: <TextSpan>[
                            const TextSpan(text: 'от '),
                            TextSpan(
                              text: '${favNovostroi.price} ₴',
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
                              text: '${favNovostroi.quadratmetr} м²',
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
                        favNovostroi.isFavorite = !favNovostroi.isFavorite;
                      });
                    },
                    icon: Image.asset(
                      favNovostroi.isFavorite
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
      home: const FavoriteNovostroi(),
    ),
  );
}
